# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# >>> vi mode >>>
export EDITOR="nvim"
export VISUAL="nvim"
bindkey -v
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^B' backward-char
bindkey -M viins '^D' delete-char-or-list
bindkey -M viins '^E' end-of-line
bindkey -M viins '^F' forward-char
bindkey -M viins '^K' kill-line
bindkey -M viins '^N' down-line-or-history
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^T' transpose-chars
bindkey -M viins '^Y' yank
# <<< vi mode <<<

# >>> alias >>>
alias mm="micromamba"
alias vim="nvim"
alias dt='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# <<< alias <<<

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/opt/homebrew/opt/micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/teabuff/.micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/teabuff/.micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/teabuff/.micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/teabuff/.micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# Created by `pipx` on 2024-03-17 04:44:34
export PATH="$PATH:/Users/teabuff/.local/bin"

source "$HOME/.rye/env"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# <<< atuin setup <<<
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

bindkey '^r' atuin-search
# >>> atuin setup >>>

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#autoload -Uz compinit && compinit

