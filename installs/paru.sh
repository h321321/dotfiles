#!/bin/bash
# 安装Paru包管理器
# 网址：https://github.com/Morganamilo/paru
echo "开始安装"
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
read -p ":: 移除安装残留的git包吗[Y/n]: " input
if [[ $input = "" ]]; then
  input="Y"
fi

if [[ $input = "Y" ]]; then
  echo ":: 正在移除"
  rm -rf ../paru
  echo ":: 移除完成"
fi

read -p ":: 是否下载PKGBUILD高亮 bat[Y/n]: " input2
if [[ $input2 = "" ]]; then
  input2="Y"
fi

if [[ $input2 = "Y" ]]; then
  echo "bat开始安装"
  sudo pacman -S bat
  echo "bat安装完成"
fi
echo "安装结束"

