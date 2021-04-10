# belajar-docker

Cheatsheet :
* `docker ps` : Melihat container aktif

# Image
* `docker images` : Lihat semua image yang ada
* `docker image ls` : sama kayak docker images
* `docker image rm <nama>:<tag>` : Hapus image pastikan tidak ada  kontainer yang menggunakan image yang akan dihapus.
* `docker pull NAMA:[TAG]` : Mengambil image dari registry. Jika tag gaada, yang diambil akan dengan tag latest. Ini sama kayak `docker image pull`.

## Container
* `docker container ls` : sama kayak docker ps
* `docker container ls --all` : Lihat semua kontainer walaupun tidak aktif
* `docker container create --name NAMA -p LOCAL:CONTAINER IMAGE` : Membuat kontainer dengan nama NAMA dan mengekspos port CONTAINER di lokal dengan port LOCAL
* `docker container start NAMA` : Menjalankan kontainer
* `docker conntainer stop NAMA` : Memberhentikan kontainer

## BUILD
* `docker build --tag NAMA:TAG PATH_DIR` : membuat docker image dari PATH_DIR. Pastikan sudah ada Dockerfile
