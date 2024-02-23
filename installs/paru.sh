#!/bin/bash
# 安装Paru包管理器
# 网址：https://github.com/Morganamilo/paru
echo "开始安装"
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
read -r input -p ":: 移除安装残留的git包吗[Y/n]: "
if [[ $input = "" ]]; then
  input="Y"
fi

if [[ $input = "Y" ]]; then
  echo ":: 正在移除"
  rm -rf ../paru
fi

echo "安装结束"

