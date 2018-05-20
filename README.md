
<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png"
alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

# cyberdojo/down docker image

- A simple rack service to display a 'server down' message when upgrading

To build and run the down-app, on the server:

```
curl -sSL https://get.docker.com/ | sh
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get install --yes git
git clone https://github.com/cyber-dojo/down.git
cd down
sudo ./pipe_build_up.sh
```

![screen shot](screen_shot.png?raw=true "screen-shot")

* [Take me to cyber-dojo's home github repo](https://github.com/cyber-dojo/cyber-dojo).
* [Take me to the http://cyber-dojo.org site](http://cyber-dojo.org).
