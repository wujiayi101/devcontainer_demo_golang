# devcontainer_demo_golang

A sample golang project uses [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers)


# Start project in devcontainer

`Devcontainer` allows you to write code in a full-feature containerized development environment:

1. Ensure Docker is installed and running
2. Install [vscode](https://code.visualstudio.com/) and `Dev Containers` extension
3. Open this project in vscode
4. Launch `Command Palette` from the UI or run `⌘ + Shift + P` if you are on Mac
5. Select either `Reopen in Container` or `Rebuild Container` to start the Devcontainer


# Start service locally

1. Launch vscode terminal in vscode``

1. Run test and lint

    ```
    make ci
    ```

1. Run the following command to build the service

    ```
    docker-compose up --build
    ```
1. Run `localhost:8080` to start the service
