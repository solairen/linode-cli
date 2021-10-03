### About:
* OS: private image based on alpine linux

This docker container contains:
* [Linode CLI](https://www.linode.com/products/cli/)

### Tag version
Check latest container tag [version](https://hub.docker.com/repository/docker/moleszek/linodecli/tags?page=1&ordering=last_updated) and change **{tag}** with proper tag version.

### How to build or download:
#### To build docker images from Dockerfile:
* docker build . -t {tagname}

#### Download from Docker repository:
* docker pull moleszek/linodecli:{tag}

### To run Linode CLI Docker image directly:

```Bash
docker run --rm -ti <pathToConfig>:/home/linode/.config/ moleszek/linodecli:{tag}
```

#### Important
To run this docker image correctly this thing should be made before run:
* pathToConfig => path to folder where Linode CLI config will be stored.


#### Additional info

Set alias to be able to use this docker image as `linode-cli` for example:

* On windows open `$PROFILE`:

```PowerShell
function linode_cli {
    docker run --rm -ti <pathToConfig>:/home/linode/.config/ moleszek/linodecli:{tag} $args[0,1,2,3,4,5,6,7,8,9]

Set-Alias -Name linode-cli -Value linode_cli
}
```

Save and restart `$PROFILE`:

```PowerShell
. $PROFILE
```

* On linux open `~/.bashrc`:

```Bash
alias linode-cli="docker run --rm -ti <pathToConfig>:/home/linode/.config/ moleszek/linodecli:{tag} $1 $2 $3 $4 $5 $6 $7 $8 $9"
```

Save and restart `.bashrc`:

```Bash
. ~/.bashrc
```
