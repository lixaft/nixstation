{ pkgs, theme, ... }:
let
  inherit (theme) colors;
  env = "env TERM=xterm-256color";
  reset = "#[fg=${colors.bar.fg},bg=${colors.bar.bg_dark},nobold,noitalics,nounderscore,nodim]";
in
{
  home.shellAliases = {
    tmux = "${env} tmux";
    tmux-sessionizer = "${env} tmux-sessionizer";
  };

  programs.tmux = {
    enable = true;

    prefix = "C-a";
    terminal = "xterm-256color";
    mouse = true;
    resizeAmount = 10;
    keyMode = "vi";
    baseIndex = 1;
    disableConfirmationPrompt = true;
    escapeTime = 0;
    historyLimit = 50000;

    extraConfig = # tmux
      ''
        set -a terminal-features 'xterm-256color:RGB'

        # Renumber windows when a window is closed.
        set -g renumber-windows on

        # Better copy-mode bindings.
        bind v copy-mode
        bind -T copy-mode-vi v "send-keys -X begin-selection"
        bind -T copy-mode-vi y "send-keys -X copy-selection"

        # Allow switching to previous with `-` like the `cd` command.
        bind - switch-client -l

        # Sane split commands.
        bind | split-window -h -c "#{pane_current_path}"
        bind % split-window -h -c "#{pane_current_path}"
        bind '"' split-window -v -c "#{pane_current_path}"

        # Select window.
        bind -n M-1 select-window -t 1
        bind -n M-2 select-window -t 2
        bind -n M-3 select-window -t 3
        bind -n M-4 select-window -t 4
        bind -n M-5 select-window -t 5
        bind -n M-6 select-window -t 6
        bind -n M-7 select-window -t 7
        bind -n M-8 select-window -t 8
        bind -n M-9 select-window -t 9

        # Fast pane switch (vim <3).
        bind -n M-h select-pane -L
        bind -n M-j select-pane -D
        bind -n M-k select-pane -U
        bind -n M-l select-pane -R

        # Fast pane resize.
        bind -r H resize-pane -L 10
        bind -r J resize-pane -D 10
        bind -r K resize-pane -U 10
        bind -r L resize-pane -R 10

        # Easy sync mode.
        bind Enter setw synchronize-panes

        # Search projects.
        bind C-s run-shell "tmux new-window tmux-sessionizer"
        bind t run-shell "tmux-sessionizer /tmp"
        bind h run-shell "tmux-sessionizer ~"
        bind g run-shell "tmux-sessionizer ~/todo.md"

        # Statusbar.
        window_number="#(${./numbers.sh} #I)"
        pane_numbers="#(${./numbers.sh} #P)"

        set -g window-status-separator ""
        set -g status-left-length 80
        set -g status-right-length 150

        set -g mode-style "fg=${colors.aquamarine},bg=${colors.black}"

        set -g message-style "bg=${colors.blue},fg=${colors.bg}"
        set -g message-command-style "fg=${colors.white},bg=${colors.black}"

        set -g pane-border-style "fg=${colors.black}"
        set -g pane-active-border-style "fg=${colors.accent}"
        set -g pane-border-status off

        set -g status-style bg="${colors.bar.bg_dark}"

        set -g status-left "\
        #[fg=${colors.bar.bg_light},bg=${colors.accent},bold] #{?client_prefix,󰠠 ,#[dim]󰤂 }\
        #[bold,nodim]#S \
        "

        set -g window-status-current-format "${reset}\
        #[fg=${colors.aquamarine},bg=${colors.bar.bg_light}] #{?#{==:#{pane_current_command},ssh},󰣀 , }\
        #[fg=${colors.bar.fg},bold,nodim]$window_number#W\
        #[nobold,dim]#{?window_zoomed_flag, $zoom_number, $custom_pane} \
        "

        set -g window-status-format "${reset}\
        #[fg=${colors.bar.fg}] #{?#{==:#{pane_current_command},ssh},󰣀 , }\
        ${reset}$window_number#W \
        #[nobold,dim]$pane_numbers\
        #[fg=${colors.yellow}]#{?window_last_flag,󰁯 ,} "

        set -g status-right "\
        #[bg=${colors.bar.bg_light}] %Y-%m-%d । %H:%M \
        "
      '';
  };
}
