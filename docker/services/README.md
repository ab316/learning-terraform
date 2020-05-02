# Docker Swarm
This verion uses docker swarm to launch the blog and the database as docker swarm services.
Using docker swarm services, we do not need the sleep hack as before to make sure that the blog container
waits for the database to boot. This is because Docker swarm automatically restarts the container when it goes down
