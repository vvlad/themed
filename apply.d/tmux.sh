
source ~/.config/themed

[[ $THEME == "light" ]] && THEME=$BASE16_LIGHT || THEME=$BASE16_DARK

unset TMUX
lsof /dev/pts/ | awk '{ print $2" "$9}' | grep -v PID | uniq | while read -r pid pts ; do
  [[ ! -d /proc/$pid ]] && continue
  unset PREFIX
  grep -q TMUX /proc/$pid/environ && PREFIX="TMUX=1 "
  sh -c "${PREFIX}sh ~/.local/share/base16-shell/scripts/base16-$THEME.sh > $pts"
done
ln -sf ~/.local/share/base16-shell/scripts/base16-$THEME.sh ~/.base16_theme

