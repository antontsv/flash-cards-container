# Flash cards repo container 
[![Build Status](https://travis-ci.org/antontsv/flash-cards-container.svg?branch=master)](https://travis-ci.org/antontsv/flash-cards-container)

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

# Vagrant setup

If you want to try it out in VM you can use `vagrant up`

Vagrant provision has the following steps:
* Docker installation
* Building a container
* Run the resulting container

If all provision steps finish correctly you will see the following message in the end:
```
🚀  open http://10.100.100.111 in your browser 😎
```

You can see a container once in the VM:
```sh
vagrant ssh
sudo docker ps

# to stop container, run
sudo docker stop fc
```

# Base images
If you need basic linux - you can [use image](https://github.com/antontsv/flash-cards-container/blob/master/Dockerfile-alpine) that is based on Alpine Linux. If you are looking for the compact image, that deliver only described functionality use [default Dockerfile](https://github.com/antontsv/flash-cards-container/blob/master/Dockerfile)

```sh
docker image ls
REPOSITORY                        SIZE
flash-cards-from-scratch          6.1MB
flash-cards-from-alpine           16.2MB
```

# Feedback is appreciated
You can add your own JavaScript inside the container to tailor your own app. Please let me know about your ideas to use this container image, I am curious where you are able to take this simple idea.
