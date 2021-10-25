# Neovim configuration

:loud_sound: I'm a **front-end web developer** so most of plugins are configured based on **front-end web development**.

### How to install 'neovim'

Please check the official website https://github.com/neovim/neovim

### How to configure it

After you clone the [working-env](https://github.com/kafelix496/working-env/tree/master/nvim), you need to make a symbolic link

```zsh
ln -s ~/working-env/nvim ~/.config/
```

:pushpin: If you happen to clone the [working-env](https://github.com/kafelix496/working-env/tree/master/nvim) repository not in home directory,
you have to change `~/working-env` to `path-you-cloned`

### Dependencies

There is some things you need to install

1. Node.js ( _If you are using MacOS Homebrew, Please use the following command_ )

   ```zsh
   brew install nodejs
   ```

2. Nerd Fonts ( _If you are using MacOS Homebrew, Please use the following command_ )

   :pushpin:**After you install it, Please change your terminal font to 'Hack Nerd Font Mono'**

   ```zsh
   brew tap homebrew/cask-fonts
   brew install --cask font-hack-nerd-font
   ```

3. ripgrep ( _If you are using MacOS Homebrew, Please use the following command_ )

   ```zsh
   brew install ripgrep
   ```

4. Fuzzy Finder ( _If you are using MacOS Homebrew, Please use the following command_ )

   ```zsh
   brew install fzf
   ```
