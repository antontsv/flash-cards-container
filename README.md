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

# Vagrant setup

If you want to try it out in VM you can use `vagrant up`

Vagrant provision includes:
* Docker installation inside the VM
* Building a container inside the VM
* Run container inside the VM

If all provision step finish correctly you will see the following message in the end:
```
🚀  open http://10.100.100.111 in your browser 😎
```

You can expose container once in the VM:
```sh
vagrant ssh
sudo docker ps

# to stop container, run
sudo docker stop fc
```

# Feedback is appreciated
You can add your own JavaScript inside the container to tailor your own app. Please let me know about your ideas to use this container image, I am curious where you are able to take this simple idea.