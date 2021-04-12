# belajar-docker

## Cheatsheet
* `docker ps` : Melihat container aktif

### Image
* `docker images` : Lihat semua image yang ada
* `docker image ls` : sama kayak docker images
* `docker image rm <nama>:<tag>` : Hapus image pastikan tidak ada  kontainer yang menggunakan image yang akan dihapus.
* `docker pull NAMA:[TAG]` : Mengambil image dari registry. Jika tag gaada, yang diambil akan dengan tag latest. Ini sama kayak `docker image pull`.

### Container
* `docker container ls` : sama kayak docker ps
* `docker container ls --all` : Lihat semua kontainer walaupun tidak aktif
* `docker container create --name NAMA -p LOCAL:CONTAINER IMAGE` : Membuat kontainer dengan nama NAMA dan mengekspos port CONTAINER di lokal dengan port LOCAL
* `docker container create --name NAMA -p LOCAL:CONTAINER IMAGE -e ENV_NAME=VALUE` : Membuat kontainer ditambah dengan pengaturan environment variable. Klo lebih dari satu,  tambah lagi flagnya sesuai kebutuhan.
* `docker container start NAMA` : Menjalankan kontainer
* `docker container stop NAMA` : Memberhentikan kontainer
* `docker container run IMAGE` : Membuat dan menjalankan kontainer secara langsung. Flagsnya sama kayak create.
* `docker container inspect NAMA` : Melihat konfigurasi dari kontainer yang sudah dibuat
* `docker container logs NAMA` : Melihat logs dari program

### BUILD
* `docker build --tag NAMA:TAG PATH_DIR` : membuat docker image dari PATH_DIR. Pastikan sudah ada Dockerfile

### PUSHING
Untuk melakukan push, perlu dilakukan langkah sebagai berikut:
1. `docker tag local-image:tagname reponame:tagname` : Ubah nama image lokal ke nama repo di registry biar bisa di push.
2. `docker push reponame:tagname` : Push ke repo di registry

Klo misal akses ditolak,  login dulu pake `docker login`

### NETWORK
Untuk membuat kontainer berkemungkinan untuk berkomunikasi  satu sama lain.
* `docker network create NAMA` : Buat Network
* `docker network connect NAMA_NETWORK NAMA_CONTAINER` : Mengkoneksi NAMA_NETWORK ke NAMA_KONTAINER
* `docker network disconnect NAMA_NETWORK NAMA_CONTAINER` : Memutus Koneksi
* `docker network ls` : Lihat semua network

## VOLUMES
Untuk membuat volume bersama bisa pake:
* `docker volume create NAMA` : Bikin volume
* Untuk memakai volume tersebut, kita bisa menggunakan perintah `docker container create ... -v NAMA_VOLUME:PATH_DI_KONTAINER`
* Untuk membuat link terhadap lokal kita, bisa pakai `docker container create ... -v PATH_DI_LOKAL:PATH_DI_KONTAINER`

### Masuk ke Kontainer
Pakai : `docker exec -it NAMA PATH_TO_EXEC`
Dengan perintah diatas, kita mengakses dan menjelajah kontainer yang berjalan. Flag `-i` digunakan supaya kita bisa interaktif dalam program sedangkan flag `-t` untuk mengalokasikan tty.

Contoh : `docker exec -it mongo /bin/bash`

### Bersih-bersih
Kita bisa hapus data-data yg tidak kepakai dengan perintah `prune`. Misal:
* `docker container prune` : Menghapus kontainer yang mati
* `docker network prune` : Menghapus network yang ga kepake

Jika mau menghapus semuanya tanpa ampun, pakai:
* `docker system prune` : Menghapus semua kecuali volume
* `docker system prune -a --volumes` : Cuci bersih docker
