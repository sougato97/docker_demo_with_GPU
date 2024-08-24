To build the Docker image, use the following command:
```bash
docker build -t pytorchapp .
```
Here "pytorchapp" is the name of docker image


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
Also follow this youtube video for further explanation
<a href="https://www.youtube.com/watch?v=KUECJHlV1LE&t=346s">
    <img src="https://github.com/sougato97/docker_demo_with_GPU/Designer.png" width="120" height="120" />
</a>