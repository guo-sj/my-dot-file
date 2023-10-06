# my-dot-file

这个仓库是用来记录自己的dot file，如`.vimrc`。

Bootstraped by [dotbot](https://github.com/anishathalye/dotbot).

## TODO
- [x] 增加一个 `install_common_repo` 的脚本，用来下载常用的 github repo
    - [anki](https://github.com/guo-sj/anki)
    - [guo-sj.github.io](https://github.com/guo-sj/guo-sj.github.io)
    - [my-blog](https://github.com/guo-sj/my-blog)
- [x] 增加 [vim-barbaric](https://github.com/rlue/vim-barbaric.git) 在 macos 的依赖 [xkbswitch-macosx](https://github.com/myshov/xkbswitch-macosx.git)
- [ ] 增加如何安装 [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh.git) 的脚本
- [ ] 增加如何安装 [fzf](https://github.com/junegunn/fzf) 的脚本
- [x] 把 csd (Change Selected Directory) 功能增加到 zshrc 中，预计时间 0.5h
- [ ] 把 [vim](https://github.com/vim/vim.git) 和 [tmux](https://github.com/tmux/tmux.git) 的安装也加进来

## 使用方法

### 常规安装
```sh
git clone https://github.com/guo-sj/my-dot-file
cd my-dot-file
./install
```

### 下载常用的 github repo
```sh
./install_common_repo
```

这个脚本会下载我常用的 3 个 github repo 到目录 `$HOME/Documents/guosj`：
- [anki](https://github.com/guo-sj/anki)
- [guo-sj.github.io](https://github.com/guo-sj/guo-sj.github.io)
- [my-blog](https://github.com/guo-sj/my-blog)
