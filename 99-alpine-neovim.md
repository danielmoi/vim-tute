## Run Vim inside of Docker
```
docker run -it -v "$(pwd)":/root -w /root danielmoi/alpine-neovim:0.1 bash

vim
```
