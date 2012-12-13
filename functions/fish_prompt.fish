function fish_prompt
	printf '['
	printf '%s%s%s' (set_color blue) (echo $USER) (set_color normal)
	printf '@'
	printf '%s%s%s' (set_color green) (cat /etc/hostname) (set_color normal)
	printf '] '
	printf '%s%s' (set_color red) (pwd)
	if git status >/dev/null ^/dev/null
		printf '%s {%s}>: ' (set_color normal) (git branch | awk -F\  '{print $2}')
	else
		printf '%s>: ' (set_color normal)
	end
end
