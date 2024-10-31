#!/usr/bin/env sh
echo "Which translation version of the Quran would you like to install?"
echo "[1] Turkish"
echo "[2] English"
read language
case "$language" in
	1) echo $PATH | grep -q "\.local\/bin\(:\|/\)"
	case "$?" in
		0 ) [ -d "$HOME/.local/share/" ] && mkdir -p $HOME/.local/share/Quran && cp Quran_Turkish.txt $HOME/.local/share/Quran/ && val=yes || echo "$HOME/.local/share/ directory does not exist"
			sed -i 's/Quran.txt/Quran_Turkish.txt/g' Quran
			[ "$val" = "yes" ] && [ -d "$HOME/.local/bin/" ] && cp Quran $HOME/.local/bin/ && chmod +x $HOME/.local/bin/Quran || echo "$HOME/.local/bin/ directory does not exist"
			;;
		* ) echo ".local/bin does not seem to be in PATH variable, you might want to change that" && \
			echo "Installation failed" && \
			exit 1
			;;
	esac
	;;
	2) echo $PATH | grep -q "\.local\/bin\(:\|/\)"
	case "$?" in
		0 ) [ -d "$HOME/.local/share/" ] && mkdir -p $HOME/.local/share/Quran && cp Quran.txt $HOME/.local/share/Quran/ && val=yes || echo "$HOME/.local/share/ directory does not exist"
			sed -i 's/Quran_Turkish.txt/Quran.txt/g' Quran
			[ "$val" = "yes" ] && [ -d "$HOME/.local/bin/" ] && cp Quran $HOME/.local/bin/ && chmod +x $HOME/.local/bin/Quran || echo "$HOME/.local/bin/ directory does not exist"
			;;
		* ) echo ".local/bin does not seem to be in PATH variable, you might want to change that" && \
			echo "Installation failed" && \
			exit 1
			;;
	esac
	;;
	* ) echo "Invalid choice, put 1 or 2" && exit 1
		;;
esac
