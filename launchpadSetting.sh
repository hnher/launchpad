#!/usr/bin/env bash
# 用于更新 Launchpad 的显示图标数以达到最好的显示效果

echo -e "请输入每页显示多少行：\c"

read row

echo -e "请输入每行显示多少个图标：\c"

read col

defaults write com.apple.dock springboard-rows -int $row

defaults write com.apple.dock springboard-columns -int $col

defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock
