alias opg='opg'
function opg
	op get item $argv | jq '.details.fields[] | select(.designation=="passwo    rd").value'
end
alias ops='eval (op signin my)'
