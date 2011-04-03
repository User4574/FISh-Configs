function imgup
	if test -n (echo $argv | awk '{print $2}')
		cat $argv[1] | ssh nathan@4574.co.uk "sudo su - www-data -c 'cat > /var/www/gallery/$argv[2]'"
	else
		cat $argv[1] | ssh nathan@4574.co.uk "sudo su - www-data -c 'cat > /var/www/gallery/$argv[1]'"
	end
end
