#!/bin/bash
#FRESYA CHANDRA DHEOVANI
#PARALEL B
#18081010009
#ANGKATAN'18

SATU()
	{
	loop=1;
	sal=1;

function isiSaldo(){
	clear;
	while [[ sal -eq 1 ]]; do
	echo "============="
	echo "Menu Saldo : "
	echo "============="
	echo "1. Awal saldo " ;
	echo "2. Tambah saldo " ;
	echo "3. Kembali menu utama ";
	echo -n "Pilihan anda : " ;
	read pilihan;
	case "$pilihan" in 
		"1")
		echo -n "Saldo Hari : "
		read salbul;
		echo "!!!Saldo awal minimal 30000!!!"
		echo -n "Saldo awal : "
		read salwal;
		let totsal=salwal;
		if [ $totsal -le 30000 ] ; then
			echo "Saldo Belum memenuhi aturan! saldo anda $totsal"
			
		fi
		if [ $totsal -ge 30000 ] ; then
			echo "Saldo cukup!"
			

		fi
		if [ $totsal -le 0 ] ; then
			echo "Anda Tidak punya saldo"
			
		fi
		;;
		"2")
		echo "tambah saldo : "
		read tamsal;
		let totsal=salwal+tamsal;
		;;
		"3")
		let sal=2;
		;;
	esac

done
sal=1;
}

function viewSaldo(){
	echo "Saldo anda hari $salbul sekarang adalah : $totsal "
}

PRIMER(){
	let totsal=$totsal-30000
	echo "Saldo Anda Tersisa : $totsal"
}

SEKUNDER(){
	let totsal=$totsal-15000
	echo "Saldo Anda Tersisa : $totsal"
}

function pemakaianSaldo(){
	echo "Saldo anda $totsal pada hari $salbul"
	echo -n "Masukkan hari pemakaian : "
	read bulpek;

	#If dibawah untuk menyeleksi bulannya apakah benar sama atau tidak sesuai dengan inputan pada saldo
	if [ $bulpek == $salbul ] || [ $salbul == $bulpek ]
	then
		while [[ pilih=1 ]]; do
		echo "==================================="
		echo "||------- MENU PILIHAN : ------- ||"
		echo "||1. Kebutuhan Primer    = 30000 ||"
		echo "||2. Kebutuhan Sekunder  = 15000 ||"
		echo "||3. exit                        ||"
		echo "==================================="
		echo -n "Masukkan Pilihanmu : "
		read choose
	
			case $choose in
			1 )
			PRIMER;
			;;
			2 )
			SEKUNDER;
			;;
			3 )
			SATU;
			;;
	esac
done
		let totsal=totsal-busal;
	else
		echo "Saldo anda kosong pada hari $bulpek"
	fi
	
}

function Excel(){
	libreoffice; 
}


	while [[ loop -eq 1 ]]; do
	echo "=====================================";
	echo "|| ---------SELAMAT DATANG---------||"
	echo "|| PROGRAM KHAS HARIAN SEDERHANA09 ||" ;
	echo "=====================================";
	echo "Menu Utama : " ;
	echo "1. Inputkan Saldo anda ";
	echo "2. menampilkan saldo anda ";
	echo "3. Pemakaian Saldo ";
	echo "4. Buka libreoffice ";
	echo "5. Keluar Program ";
	echo "Pilihan : "
	read pilih;

	case "$pilih" in
		"1" )
		isiSaldo;
			;;
		"2" )
		viewSaldo;
			;;
		"3" )
		pemakaianSaldo;
			;;
		"4" )
		Excel;
			;;
		"5" )
		exit;
			;;
	esac

	done
}


DUA(){
	deadlock(){
	echo "apakah anda yakin memilih deadlock"
	echo "kalo deadlock ingin berhenti tekan ctrl+c untuk memberhentikannya"
	echo "apakah anda yakin? (y/n)"
	read yakinanda
	if [[ $yakinanda == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
if [[ $yakinanda ]]; then
	echo "anda tidak berani :D"
fi	
}



membuatbash(){
	echo "buat nama :"
	read nama_file
	nano nama_file $nama_file
}

menjalankanbash(){
	echo "file yang dijalankan : "
	read nama_file
	bash nama_file $nama_file
	echo "berhasil"
	echo "	"
}


browsing(){

	firefox
}


installaplikasi(){
	echo "!!PERINGATAN KERAS!!"
	echo "Harap menulisakan nama aplikasi dengan tepat dan benar!"
	echo "aplikasi apa yang ingin anda install?"
	read installaplikasi
	sudo apt install $installaplikasi
}


while [[ pilih=1 ]]; do
	echo "|========================================|"
	echo "|--- MENU PROGRAM RANGKUMAN PRAKTIKUM ---|"
	echo "|========================================|" 
	echo "|1. Membuat file bash                    |"
	echo "|2. Menjalankan file bash                |"
	echo "|3. Mari mencoba deadlock system :'D     |"
	echo "|4. Firefox Web Browser                  |"
	echo "|5. Menginstall Aplikasi Baru            |"
	echo "|6. Keluar!                              |"
	echo "|========================================|"
	echo -n "Masukkan pilihan anda : "
	read pilih

	case "$pilih" in 
		"1" ) membuatbash; ;; 
		"2" ) menjalankanbash; ;; 
		"3" ) deadlock; ;; 
		"4" ) browsing; ;; 
		"5" ) installaplikasi; ;; 
		"6" ) exit ;;	 
esac	

done
}

while [[ pilih=1 ]]; do
	clear;
	echo "==================================="
	echo "||------- MENU PILIHAN : ------- ||"
	echo "||1. PROGRAM BUKU KAS SEDERHANA09||"
	echo "||2. PROGRAM RANGKUMAN PRAKTIKUM ||"
	echo "||3. exit                        ||"
	echo "==================================="
	echo -n "Masukkan Pilihanmu : "
	read choose
	
	case $choose in
		1 )
		SATU;
			;;
		2 )
		DUA;
		;;
		3 )
		exit
		;;
	esac
done