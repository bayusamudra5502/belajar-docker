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
