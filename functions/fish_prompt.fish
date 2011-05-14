function fish_prompt
	printf '[%s@%s] ' (echo $USER) (cat /etc/hostname)
	printf '%s%s' (set_color red) (pwd)
	printf '%s>: ' (set_color normal)
end
