# git 
function git_prompt_info() {
  if [[ "$(git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    GIT_BRANCH_NAME=${ref#refs/heads/}
    ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}$GIT_BRANCH_NAME%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}$GIT_BRANCH_NAME%{$reset_color%}"
    echo "$(parse_git_dirty)"
  fi  
}
PROMPT='%{$fg[blue]%}%1d%{$reset_color%}%{$fg_bold[cyan]%} ➤ %{$reset_color%}$(git_prompt_info) '

# LS colors, made with http://geoff.greer.fm/lscolors/
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32':$LS_COLORS
export LS_COLORS='*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31':$LS_COLORS
export LS_COLORS='*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:*.patch=00;34:*.o=00;32:*.so=01;35':$LS_COLORS
export LS_COLORS='*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35':$LS_COLORS
export LS_COLORS='*.py=01;36:*.go=01;36:*.json=01;95':$LS_COLORS
# for BSD
export LSCOLORS='exfxcxdxbxegedabagacad'
