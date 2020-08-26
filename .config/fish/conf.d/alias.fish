# exa
# https://github.com/ogham/exa
if type -q exa
	alias ls 'exa --icons'
	alias ll 'exa -lh --git --icons'
	alias la 'exa -alh --git --icons'
	alias l 'exa --icons'
else
	alias ls 'ls --color=auto'
	alias la 'ls -A'
	alias ll 'ls -alF'
	alias l 'ls -CF'
end

# bat
# https://github.com/sharkdp/bat
if type -q bat
	alias less 'bat -p'
	alias cat 'bat -pp'
end
if type -q batcat
	alias bat 'batcat'
	alias less 'batcat -p'
	alias cat 'batcat -pp'
end

# ripgrep (rg)
# https://github.com/BurntSushi/ripgrep
if type -q rg
	alias grep 'rg'
	alias fgrep 'rg -F'
	alias egrep 'rg'
else
	alias grep 'grep --color=auto'
	alias fgrep 'fgrep --color=auto'
	alias egrep 'egrep --color=auto'
end

# neovim
# https://github.com/neovim/neovim
if type -q nvim
	alias vi nvim
	alias vim nvim
end

# macos
if type -q plutil
	alias plb='plutil -convert binary1'
	alias plx='plutil -convert xml1'
end
if type -q defaults
	alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true ; killall Dock'
end
