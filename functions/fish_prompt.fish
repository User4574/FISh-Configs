function fish_prompt
	set cmdcount (math $cmdcount+1)
	printf '[%d] ' $cmdcount
	if test -d .git
		printf '%s%s %s(%s)%s>: ' (set_color red) (pwd) (set_color blue) (git branch | grep "*" | awk -F" " '{print $2}') (set_color normal)
	else
		printf '%s%s%s>: ' (set_color red) (pwd) (set_color normal)
	end
end
