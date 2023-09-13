# [open-interpreter](https://github.com/KillianLucas/open-interpreter)-docker

Docker-based environment for [open-interpreter](https://openinterpreter.com/).

:warning: IMPORTANT: Do Not Accidentally Expose API Keys :warning:

:stop_sign: NEVER push Docker images containing sensitive data like API Keys to GitHub Container Registry (GHCR) or any other public registry.

- :rotating_light: Immediately revoke the exposed API Key.
- :recycle: Remove the compromised image from GHCR.
- :shield: Update your .dockerignore or similar configurations to ensure sensitive files are not included in future Docker images.

## Docker Build

```sh
sudo docker build -t open-interpreter-docker .
```

## Docker Run
no set openai api key
```sh
docker run -it --rm -v $(pwd)/files:/root open-interpreter-docker:latest
```
set run with openai api key
```
docker run -it --rm -e OPENAI_API_KEY=<Your_API_Key> -v $(pwd)/files:/root open-interpreter-docker:latest
```

## App Run
```sh
# interpreter
```
