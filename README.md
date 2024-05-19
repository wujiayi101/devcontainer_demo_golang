
[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:wujiayi101/devcontainer_demo_golang.git)


# devcontainer_demo_golang

A sample golang project uses [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers)

[My blog](https://wu101.com/blog/devcontainer-the-introduction/) uses it to talk about devcontainers.

# System requirements

* Ensure Docker is installed and running
* Install [vscode](https://code.visualstudio.com/) and `Dev Containers` extension

# Start project in devcontainer

* *Option 1*: Click `Dev Containers | Open` badge

* *Option 2*: Manually start devcontainer in VS Code
    1. Open this project in vscode
    1. Launch `Command Palette` from the UI or run `⌘ + Shift + P` if you are on Mac
    1. Select either `Reopen in Container` or `Rebuild Container` to start the Devcontainer


# Start service locally

1. Launch vscode terminal in vscode

1. Run lint and test

    ```
    make lint
    make test
    ```

1. Run the following command to build the service

    ```
    docker-compose up --build
    ```
1. Run `localhost:8080` to start the service
