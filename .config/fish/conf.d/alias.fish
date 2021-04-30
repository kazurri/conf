# exa
if type -q exa
  alias ls 'exa --icons'
  alias ll 'exa -lh --icons --git'
  alias lt 'exa -lh --icons --sort modified --git'
else
  switch (uname)
    case Linux
      alias ls 'ls -CF --color=auto'
      alias ll 'ls -lF'
      alias lt 'ls -lrt'
  end
end

# bat
if type -q bat
  alias cat 'bat -p --paging never'
  alias less 'bat'
end
if type -q batcat
  alias bat 'batcat'
  alias cat 'batcat -p --paging never'
  alias less 'batcat'
end

# ripgrep
if type -q rg
  alias grep 'rg'
  alias egrep 'rg'
  alias fgrep 'rg -F'
else
  alias grep 'grep --color=auto'
  alias egrep 'egrep --color=auto'
  alias fgrep 'fgrep --color=auto'
end

# ghq
if type -q ghq
  alias g 'cd ( ghq list -p ( ghq list | fzf ) )'
end

# neovim
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
