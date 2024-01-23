# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %F{red}%b%f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{cyan}%n%f in %F{yellow}${PWD}%f ${vcs_info_msg_0_}%f %% '
export KRB5CCNAME=KCM:`id -u`
