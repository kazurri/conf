alias opg='opg'
function opg
	op get item $argv | jq '.details.fields[] | select(.designation=="password").value'
end
alias ops='eval (op signin my)'
alias plb='plutil -convert binary1'
alias plx='plutil -convert xml1'
alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true ; killall Dock'
alias vi='nvim'
