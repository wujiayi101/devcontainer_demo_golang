
[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:wujiayi101/devcontainer_demo_golang.git)


# devcontainer_demo_golang

A sample golang project uses [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers)

[My blog](https://wu101.com/blog/devcontainer-the-introduction/) uses it to talk about devcontainers.


# Create development setup with devcontainer

Devcontainer allows you to develop in an isolated container with all required software pre-installed.

<details>
  <summary><i>How to set up a devcontainer?</i></summary>

1. Ensure Docker is installed and running
1. Install [vscode](https://code.visualstudio.com/) and `Dev Containers` extension
1. Install `code` cli tool: Launch `Command Palette` and run `Install 'code' command in PATH`
1. Now open this project in vscode: in your Mac terminal run `code /path/to/project`
1. Start a devcontainer for the project: Launch `Command Palette` again and run either `Reopen in Container` or `Rebuild Container`.
</details>

# Run test, start service locally

1. Launch vscode terminal

1. Run lint and test

    ```
    make lint
    make test
    ```

1. Run the following docker-compose command to start the service on `localhost:8080`

    ```
    make service-up
    ```
