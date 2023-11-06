[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:wujiayi101/devcontainer_demo_golang.git)

# devcontainer_demo_golang

A sample golang project uses [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers)


# Launch project in devcontainer

`Devcontainer` allows you to write code in a full-feature containerized development environment:

1. Ensure Docker is installed and running

1. Install [vscode](https://code.visualstudio.com/)

1. Click the top `Dev Containers Open` badge to launch the project to a devcontainer

# Start service

1. Launch vscode terminal in vscode

1. Run test and lint

    ```
    make ci
    ```

1. Run the following command to build the service

    ```
    docker-compose up --build
    ```
1. Run `localhost:8080` to start the service
