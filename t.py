from __future__ import annotations

import re
from typing import NamedTuple

RE = re.compile(r"v(?<version>:\d+)")


def f(a: int, b: int) -> int:
    """This is a function.

    This is a very long docstring.
    """
    return a + b


class Person(NamedTuple):
    """This is a person type.

    Arguments:
        name: blabla
        age: blabla

    Examples:
        >>> from maya import cmds
    """

    name: str
    age: int

    def p(self, name: str, _: str = "test") -> None:
        s = f"{name} ({self.age} year)"
        _ = s
        if s:
            print("====")
            print(s)

    @property
    def pname(self) -> str:
        return self.name.title()
