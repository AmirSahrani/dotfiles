gpu() {
  watch -n0.1 nvidia-smi
}

sync() {
  ss -nltp | grep syncthing | grep 127
}

merge() {
  git checkout main
  git pull
  git checkout $1
  git merge main $1
}

gor() {
  git remote -v | grep fetch | awk '{print $2}' | sed 's/\.git//' | xargs xdg-open
}


word_index() {
  python ~/Documents/python/SP/word_index.py ~/Documents/python/SP/texts/aca.txt
}

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

convert_davinci () {
ffmpeg -i $1 -c:v dnxhd -vf "fps=24,format=yuv422p" -profile:v dnxhr_hq $2
}
