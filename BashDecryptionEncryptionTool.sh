#!/usr/bin/env bash


# THIS TOOL OR PROGRAM USES INDONESIAN LANGUAGE


clear
figlet -f slant "EncDec"
printf "\033[1;32mDibuat Oleh: Ruben Leonardo Sigalingging.\n"
printf "\033[1;32mDibuat Pada: Senin, 13 Juni 2022, Pukul 10:04 PM.\n"
printf "\033[1;32mMenggunakan: Shell Script.\n"
printf "\033[1;32mFungsi: Untuk Mengenkripsi dan Mendekripsi File.\n"
printf "\n"
printf "\033[1;32mFile Encryption and Decryption Tools---\n"
printf "\n"


pilihan="Enkripsi Dekripsi Update Upgrade Clear Keluar"
printf "\n"


select option in $pilihan; do
	printf ""
	if [[ $REPLY = 1 ]]; then
		printf ""
		printf "\033[1;32mENKRIPSI FILE--\n"
		printf "\033[1;32mNama File: \n"
		read enkripsi_file;
		gpg -c $enkripsi_file
		printf "\n"
		printf "\033[1;32mFile Sukses Dienkripsi!\n"
		printf "\n"


	elif [[ $REPLY = 2 ]]; then
		printf "\n"
		printf "\033[1;32m---DEKRIPSI FILE---\n"
		printf "\033[1;32mFile Terenkripsi: \n"
		read file_terenkripsi;
		gpg -d $file_terenkripsi;
		printf "\n"
		printf "\033[1;32mFile Sukses Didekripsi! \n"
		printf "\n"


	elif [[ $REPLY = 3 ]]; then
		sudo apt-get update


	elif [[ $REPLY = 4 ]]; then
		sudo apt-get upgrade


	elif [[ $REPLY = 5 ]]; then
		clear


	elif [[ $REPLY = 6 ]]; then
		printf "\033[1;32mSampai Jumpa :) \n"
		exit


	else
		printf "\033[1;32mPilih Menu Dengan Benar! \n"
	fi
done