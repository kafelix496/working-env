# Tmux configuration

### How to install 'tmux'

Please check the official website https://github.com/tmux/tmux/wiki/Installing

### How to configure it

After you clone the [working-env](https://github.com/kafelix496/working-env/tree/master/nvim), you need to make a symbolic link

```zsh
ln -s ~/working-env/tmux/tmux.conf ~/.tmux.conf
```

:pushpin: If you happen to clone the [working-env](https://github.com/kafelix496/working-env/tree/master/nvim) repository not in home directory,
you have to change `~/working-env` to `path-you-cloned`

### Dependencies

- tmux tpm (Please check their official website https://github.com/tmux-plugins/tpm)

  ```zsh
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/tpm/
  ```

### Installing plugins

When you open tmux, you need to execute `Prefix` + <kbd>I</kbd>

### Custom key bindings

- `Prefix` : Ctrl + b
- `Prefix` + <kbd>|</kbd> : Split window vertical
- `Prefix` + <kbd>\_</kbd> : Split window horizontal
- `Prefix` + <kbd>j</kbd> : Focus to bottom pane
- `Prefix` + <kbd>k</kbd> : Focus to top pane
- `Prefix` + <kbd>h</kbd> : Focus to left pane
- `Prefix` + <kbd>l</kbd> : Focus to right pane
- `Prefix` + <kbd>r</kbd> : Rename window name
- `Prefix` + <kbd>R</kbd> : Rename session name
