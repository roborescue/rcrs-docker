
# rcrs-docker

  

Please install [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) before continuing using this repository.

  
You can easily run the simulator by cloning this repository and run the following code:
```docker-compose up```

inorder to change the map you can easily change `rcrs.env` information.
```
#MAP: You can easily put your custom map in the map folder. Some default maps are exist such as test berlin eindhoven istanbul joao kobe montreal ny paris sakae sf vc 
MAP=kobe
#RUN_MODE can be one of NO_PRECOMPUTE or WITH_PRECOMPUTE
RUN_MODE=NO_PRECOMPUTE
#TEAM is for displaying your team name
TEAM=test
```

After the first running it will create default folders named `map` and `agent-code`
You can easily changes or put your code inside agent-code. It should contain `compile.sh` and `launch.sh`
Agent logs and server logs will be stored in the `log` folder.


## run python agent version

Please uncomment to python part in the docker-compose.yml file and comment the java part.
or you can run the following command 
```
docker-compose -f docker-compose.python.yml up
```
