To build the Docker image, use the following command:
```bash
docker build -t pytorchapp .
```
Here "pytorchapp" is the name of the docker image


To run the image in a container:
```bash
docker run --gpus all --name my_pytorch_container pytorchapp
```
Here "my_pytorch_container" is the name of the container. If not provided, then docker will create a random name. 

Also "--gpus all" means, allowing GPU support. For a particular GPU use command
```bash 
docker run --gpus 1 --name my_pytorch_container pytorchapp
```

Read the Dockerfile for more information