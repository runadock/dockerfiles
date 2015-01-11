# runadock itworks

This container provides a small web-server, with our runadock-itworks page.

## Usage

docker build -t runadock/itworks .

docker run -d --name itworks -p 80:80 runadock/itworks

