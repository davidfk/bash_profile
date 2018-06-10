function override_git_prompt_colors() {
  Time12a="\$(date +%H:%M:%S)"
  # see: https://misc.flogisoft.com/bash/tip_colors_and_formatting
  LightGrey="\[\033[0;90m\]"
  LightBlue="\[\033[0;94m\]"

  GIT_PROMPT_THEME_NAME='dkamm'
  GIT_PROMPT_STAGED="${Yellow}● "
  GIT_PROMPT_UNTRACKED="${Cyan}…"
  GIT_PROMPT_STASHED="${BoldMagenta}"
  GIT_PROMPT_CLEAN="${Green}✔"
  GIT_PROMPT_COMMAND_OK="${Green}✔"
  GIT_PROMPT_COMMAND_FAIL="${Red}X"

  GIT_PROMPT_START_USER="${Cyan}${Time12a}${ResetColor} ${LightBlue}\\u${ResetColor}@${LightBlue}\\h${ResetColor}:${Yellow}${PathShort}${ResetColor}"
  GIT_PROMPT_START_ROOT="${GIT_PROMPT_START_USER}"
  GIT_PROMPT_END_USER="$ "
  GIT_PROMPT_END_ROOT="${GIT_PROMPT_END_USER}"
}

reload_git_prompt_colors 'dkamm'
