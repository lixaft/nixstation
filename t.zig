const std = @import("std");

pub const C = 'c';

pub fn LinkedList(comptime T: type) type {
    return struct {
        const Node = struct {
            value: T,
            next: ?*Node,
            prev: ?*Node,
        };

        head: ?*Node,
        tail: ?*Node,
        len: usize,

        arena: std.heap.ArenaAllocator,

        pub fn init(allocator: std.mem.Allocator) LinkedList(T) {
            return .{
                .head = null,
                .tail = null,
                .len = 0,
                .arena = std.heap.ArenaAllocator.init(allocator),
            };
        }

        pub fn deinit(self: LinkedList(T)) void {
            self.arena.deinit();

            _ = 0;
        }

        pub fn appendLeft(self: *LinkedList(T), value: T) !void {
            var node = try self.arena.allocator().create(Node);
            node.value = value;

            if (self.head) |head| {
                head.prev = node;
                node.next = head;
            } else {
                self.tail = node;
            }

            self.head = node;
            self.len += 1;
        }

        pub fn appendRight(self: *LinkedList(T), value: T) !void {
            var node = try self.arena.allocator().create(Node);
            node.value = value;

            if (self.tail) |tail| {
                node.prev = tail;
                tail.next = node;
            } else {
                self.head = node;
            }

            self.tail = node;
            self.len += 1;
        }

        pub fn popLeft(self: *LinkedList(T)) ?T {
            if (self.head) |head| {
                self.head = head.next;
                self.head.prev = null;
                self.len -= 1;
                defer self.arena.allocator().destroy(head);
                return head.value;
            } else {
                return null;
            }
        }

        pub fn popRight(self: *LinkedList(T)) ?T {
            if (self.tail) |tail| {
                self.tail = tail.prev;
                self.tail.next = null;
                self.len -= 1;
                defer self.arena.allocator().destroy(tail);
                return tail.value;
            } else {
                return null;
            }
        }

        pub fn at(self: LinkedList(T), pos: usize) T {
            var i: usize = 0;
            var node = self.head.?;
            while (i < pos) : (i += 1) {
                node = node.next.?;
            }
            return node.value;
        }

        pub fn atOrNull(self: LinkedList(T), pos: usize) ?T {
            if (pos >= self.len) {
                return null;
            }
            return self.at(pos);
        }
    };
}

test "main" {
    var l = LinkedList(u8).init(std.testing.allocator);
    defer l.deinit();

    try l.appendLeft(0);
    try l.appendLeft(1);
    try l.appendRight(2);

    try std.testing.expectEqual(l.len, 3);
    try std.testing.expectEqual(l.at(0), 1);
    try std.testing.expectEqual(l.at(1), 0);
    try std.testing.expectEqual(l.at(2), 2);
    try std.testing.expectEqual(l.atOrNull(3), null);

    const left = l.popLeft();
    const right = l.popRight();

    try std.testing.expectEqual(l.len, 1);
    try std.testing.expectEqual(left, 1);
    try std.testing.expectEqual(right, 2);
}
