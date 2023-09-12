# open-interpreter-docker

## Docker Build
no set openai api key
```sh
sudo docker build -t open-interpreter-docker .
```
set build with openai api key
```sh
sudo docker build --build-arg OPENAI_API_KEY_ARG=sk-xxx -t open-interpreter-docker .
```

## Docker Run
```sh
docker run -it --rm -v $(pwd)/files:/root open-interpreter-docker:latest
```

## App Run
```sh
# interpreter
```
