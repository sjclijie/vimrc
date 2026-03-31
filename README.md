# My vimrc

My personal vim configuration. Managed by Vundle.

## Dependency

* vim
* git

## Plugins

* AutoComplPop - 自动补全
* emmet-vim - HTML/CSS 快速编写
* minibufexpl - Buffer 管理
* nerdcommenter - 快速注释
* nerdtree - 文件树
* tagbar - 代码结构浏览
* vim-easymotion - 快速跳转
* vim-indent-guides - 缩进可视化
* vim-airline - 状态栏美化
* ctrlp - 模糊文件查找
* delimitMate - 括号自动补全

## Install

Install will overwrite your `.vimrc` file and `.vim` folder, be sure **backup your vim config** first.

```bash
git clone git@github.com:sjclijie/vimrc.git
cd vimrc
sh install.sh
```

## Shortcuts

| Key | Function |
|-----|----------|
| `;` | Leader key |
| `F3` | Toggle NERDTree |
| `F4` | Toggle Tagbar |
| `F5` | Toggle MiniBufExplorer |
| `;n` | Next buffer |
| `;p` | Previous buffer |
| `;x` | Close buffer |
