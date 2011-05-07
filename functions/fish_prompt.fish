function fish_prompt
	printf '[%s@%s] ' (echo $USERNAME) (cat /etc/hostname)
	if test -d .git
		printf '%s%s %s(%s)' (set_color red) (pwd) (set_color blue) (git branch | grep "*" | awk -F" " '{print $2}')
	else
		printf '%s%s' (set_color red) (pwd)
	end
	printf '%s>: ' (set_color normal)
end
