# evm_tendermint_node
### Dockerize evm_tendermint_node
#### Install docker
Get started with [Mac](https://docs.docker.com/docker-for-mac/ "Mac") or [Windows](https://docs.docker.com/docker-for-windows/http:// "Windows")

#### Build image
`$ docker build -t evm_tendermint_node .`

#### Run container
`$ docker run -tid --name node -p 8080:8080 -p 26657:26657 evm_tendermint_node`

#### Check the node status
attach the container  
`$ docker exec -ti node bash`  
check the logs (in container)  
`root@<container>: # tail -f logs/evm_tendermint.log`  