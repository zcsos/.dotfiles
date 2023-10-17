#!/bin/bash

# 安装所需软件
sudo apt update
sudo apt install -y zsh tmux make cmake gettext g++ npm

# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 克隆powerlevel10k主题
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 克隆zsh-autosuggestions插件
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 克隆zsh-syntax-highlighting插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 克隆zsh-history-substring-search插件
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# 克隆tmux插件管理器
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# 下载配置文件
git clone https://git.arumx.com/zcsos/.dotfiles.git ~

# 切换路径
cd ~/.dotfiles

# 复制配置文件
cp .zshrc ~

cp .p10k.zsh ~

cp .tmux.conf ~

cp -r .config ~

# 更新配置
source ~/.zshrc
source ~/.p10k.zsh
