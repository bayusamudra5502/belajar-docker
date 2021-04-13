# Dockerfile untuk demonstrasi perintah

# Keyword ARG
# Bisa dikatakan seperti variable. Pada dasarnya
# ARG yang ditulis sebelum FROM beradda di luar
# build stage jadi gaakan bisa dipake setelah 
# FROM.
ARG NODE_VERSION=15.14.0
ARG PROGRAM_VERSION=1.0

# Keyword FROM
# Untuk menyatakan base image yang dipake dalam
# proses ini. Boleh lebih dari satu FROM
FROM node:${NODE_VERSION}

# Keyword RUN
# Bakal dijalanin pas melakukan build
# VERSI 1
RUN /bin/bash -c 'echo Halo'

# Jika butuh banget ARG yg sebelumnya udah
# didefinisiin, bisa pake
ARG PROGRAM_VERSION
RUN echo ${PROGRAM_VERSION} > image_version

# VERSI 2 : Klo butuh escape, pake!
RUN ["/bin/bash", "-c", "echo bayu"]

