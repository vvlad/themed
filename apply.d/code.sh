#!/bin/bash


source ~/.config/themed

[[ $THEME == "light" ]] && THEME=$CODE_LIGHT || THEME=$CODE_DARK


cat ~/.config/Code/User/settings.json | jq ".\"workbench.colorTheme\" = \"$THEME\"" >/tmp/code.json
mv /tmp/code.json ~/.config/Code/User/settings.json


