function fish_prompt
	printf '['
	printf '%s%s%s' (set_color blue) (echo $USER) (set_color normal)
	printf '@'
	printf '%s%s%s' (set_color green) (cat /etc/hostname) (set_color normal)
	printf '] '

	printf '%s%s%s' (set_color red) (pwd) (set_color normal)

	if git status >/dev/null ^/dev/null
		printf ' {%s}' (git branch | grep '\*' | awk -F\  '{print $2}')
	end

	printf '>: '
end
