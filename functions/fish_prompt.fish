function fish_prompt
	printf '['
	printf '%s%s%s' (set_color blue) (echo $USER) (set_color normal)
	printf '@'
	printf '%s%s%s' (set_color green) (cat /etc/hostname) (set_color normal)
	printf '] '
	printf '%s%s' (set_color red) (pwd)
	printf '%s>: ' (set_color normal)
end
