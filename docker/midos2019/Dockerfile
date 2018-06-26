FROM alpine as Build

RUN apk update && \
		apk add git && \
		mkdir -p /var/lib/leonardo/www
RUN git clone https://github.com/fmontesi/soap-website.git /var/lib/leonardo/www

# Start from scratch, copy the installer, install, remove the installer.
FROM jolielang/jolie
WORKDIR /
RUN mkdir -p /var/lib/leonardo/www
COPY --from=Build /var/lib/leonardo/www/midos2019 /var/lib/leonardo/www
COPY leonardo /leonardo

WORKDIR /leonardo

CMD ["jolie","leonardo.ol"]
