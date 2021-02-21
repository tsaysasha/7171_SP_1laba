cat user_info

while true; do
    read -p "If you want information about the file, enter Y, if you want to end N: " yn
    case $yn in
        [Yy]* ) read -p "Enter path to file: " path
		stat --printf "\nlast access time: %x\ntime of last change: %y\nindex descriptor change time: %z\n\n" $path;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

