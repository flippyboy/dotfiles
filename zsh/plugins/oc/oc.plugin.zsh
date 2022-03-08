# Autocompletion for oc, the command line interface for OpenShift
#
# Author: https://github.com/kevinkirkup

if (( $+commands[oc] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_oc" ]]; then
    (oc completion zsh | sed -e 's/kubectl/oc/g') >| "$ZSH_CACHE_DIR/completions/_oc"
    source "$ZSH_CACHE_DIR/completions/_oc"
  else
    source "$ZSH_CACHE_DIR/completions/_oc"
    (oc completion zsh | sed -e 's/kubectl/oc/g') >| "$ZSH_CACHE_DIR/completions/_oc" &|
  fi
fi
