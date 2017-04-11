# Flash cards repo container
Dockerfile in this repo helps you to put
[flash cards](https://github.com/antontsv/flash-cards) inside a docker cointainer image

I have included build script to compile a server and create an image using `Dockerfile`.

Build script requires [awesome-shell](https://github.com/antontsv/awesome-shell) installation

To build the image:
```
git clone https://github.com/antontsv/flash-cards-container.git
cd flash-cards-container
scripts/build-container
```
