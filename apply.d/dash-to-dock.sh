source ~/.config/themed

[[ $THEME == "light" ]] && COLOR=$DASH_TO_DOCK_LIGHT || COLOR=$DASH_TO_DOCK_DARK


dconf write /org/gnome/shell/extensions/dash-to-dock/background-color "'$COLOR'" 
[[ `dconf read /org/gnome/shell/extensions/dash-to-dock/custom-background-color` != "true" ]] && dconf write /org/gnome/shell/extensions/dash-to-dock/custom-background-color true
