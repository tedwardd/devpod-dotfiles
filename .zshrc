# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pyenv-lazy rbenv-lazy fzf direnv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
source ~/.zsh_aliases
source ~/.zsh_func
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/twood5/.rd/bin:$PATH"
## #MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

[ -f $HOME/.config/gcloud/terraform-credentials.json ] && export GOOGLE_CREDENTIALS="$HOME/.config/gcloud/terraform-credentials.json"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"
export PATH="/usr/local/sbin:$PATH"

#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/twood5/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/twood5/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/twood5/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/twood5/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Fix history scrolling
bindkey "$terminfo[kcuu1]" up-history
bindkey "$terminfo[kcud1]" down-history

# Create a new widget.
zle -N backward-kill-space-word
backward-kill-space-word() {
  # Inform the line editor that this widget will kill text.
  zle -f kill

  # Set $WORDCHARS for this command only. 
  WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>' zle .backward-kill-word
}

# See comments above.
zle -N backward-kill-bash-word
backward-kill-bash-word() {
  zle -f kill
  WORDCHARS='' zle .backward-kill-word
}

# Bind the widgets to keys.
bindkey   '^W' backward-kill-space-word
bindkey '^[^H' backward-kill-bash-word

unsetopt HIST_VERIFY
export PATH="/opt/homebrew/opt/postgresql@10/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# rbenv shell
#eval "$(rbenv init - zsh)"

# checkov shell completion
#source <(register-python-argcomplete checkov)

# Silence pushd
setopt PUSHDSILENT
unsetopt auto_pushd

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt APPEND_HISTORY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS

export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
