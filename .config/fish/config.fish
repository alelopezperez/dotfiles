if status is-interactive
    # Commands to run in interactive sessions can go here
end

# colored man pages
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/ale/.ghcup/bin $PATH # ghcup-env


#### FOR USING BSAH
# You can add this to your ~/.config/fish/config.fish
function __fish_complete_bash
    set cmd (commandline -cp)
    bash -c "source /home/ale/.config/fish/get-bash-completions.sh; get_completions '$cmd'"
end

# Set the tool to use bash completions
complete -xc makers -a '(__fish_complete_bash)'

#### FINISH USING BASH

## alias
source ~/.bash_aliases

## asdf gleam elixir erlang
source ~/.asdf/asdf.fish




# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/ale/.opam/opam-init/init.fish' && source '/home/ale/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

### ALWAYS AT THE END Startship
starship init fish | source
