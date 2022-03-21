<!-- ⚠️ This README has been generated from the file(s) ".config/docs/blueprint-readme-codeclimate.md" ⚠️--><div align="center">
  <center>
    <a href="https://github.com/ProfessorManhattan/codeclimate-sonar-python">
      <img width="148" height="148" alt="Sonar Python logo" src="https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python/-/raw/master/logo.png" />
    </a>
  </center>
</div>
<div align="center">
  <center><h1 align="center"><i></i>Sonar Python CodeClimate Engine<i></i></h1></center>
  <center><h4 style="color: #18c3d1;">A slim Docker image and CodeClimate engine maintained by <a href="https://megabyte.space" target="_blank">Megabyte Labs</a></h4><i></i></center>
</div>

<div align="center">
  <a href="https://megabyte.space" title="Megabyte Labs homepage" target="_blank">
    <img alt="Homepage" src="https://img.shields.io/website?down_color=%23FF4136&down_message=Down&label=Homepage&logo=home-assistant&logoColor=white&up_color=%232ECC40&up_message=Up&url=https%3A%2F%2Fmegabyte.space&style=for-the-badge" />
  </a>
  <a href="https://github.com/ProfessorManhattan/codeclimate-sonar-python/blob/master/docs/CONTRIBUTING.md" title="Learn about contributing" target="_blank">
    <img alt="Contributing" src="https://img.shields.io/badge/Contributing-Guide-0074D9?logo=github-sponsors&logoColor=white&style=for-the-badge" />
  </a>
  <a href="https://app.slack.com/client/T01ABCG4NK1/C01NN74H0LW/details/" title="Chat with us on Slack" target="_blank">
    <img alt="Slack" src="https://img.shields.io/badge/Slack-Chat-e01e5a?logo=slack&logoColor=white&style=for-the-badge" />
  </a>
  <a href="https://github.com/ProfessorManhattan/codeclimate-sonar-python" title="GitHub mirror" target="_blank">
    <img alt="GitHub" src="https://img.shields.io/badge/Mirror-GitHub-333333?logo=github&style=for-the-badge" />
  </a>
  <a href="https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python" title="GitLab repository" target="_blank">
    <img alt="GitLab" src="https://img.shields.io/badge/Repo-GitLab-fc6d26?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEUAAAD///+l2Z/dAAAAAXRSTlMAQObYZgAAAHJJREFUCNdNxKENwzAQQNEfWU1ZPUF1cxR5lYxQqQMkLEsUdIxCM7PMkMgLGB6wopxkYvAeI0xdHkqXgCLL0Beiqy2CmUIdeYs+WioqVF9C6/RlZvblRNZD8etRuKe843KKkBPw2azX13r+rdvPctEaFi4NVzAN2FhJMQAAAABJRU5ErkJggg==&style=for-the-badge" />
  </a>
</div>
<br/>
<div align="center">
  <a title="Version: 2.9.2" href="https://github.com/ProfessorManhattan/codeclimate-sonar-python" target="_blank">
    <img alt="Version: 2.9.2" src="https://img.shields.io/badge/version-2.9.2-blue.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEUAAAD///+l2Z/dAAAAAXRSTlMAQObYZgAAACNJREFUCNdjIACY//+BEp9hhM3hAzYQwoBIAqEDYQrCZLwAAGlFKxU1nF9cAAAAAElFTkSuQmCC&cacheSeconds=2592000&style=flat-square" />
  </a>
  <a title="GitLab build status" href="https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python/-/commits/master" target="_blank">
    <img alt="Build status" src="https://img.shields.io/gitlab/pipeline-status/megabyte-labs/docker/codeclimate/sonar-python?branch=master&label=build&logo=gitlab&logoColor=white&style=flat-square">
  </a>
  <a title="DockerHub image size" href="https://hub.docker.com/repository/docker/megabytelabs/sonar-python" target="_blank">
    <img alt="Image size" src="https://img.shields.io/docker/image-size/megabytelabs/sonar-python?logo=docker&sort=date&logoColor=white&style=flat-square">
  </a>
  <a title="DockerHub pulls" href="https://hub.docker.com/repository/docker/megabytelabs/sonar-python" target="_blank">
    <img alt="Pulls" src="https://img.shields.io/docker/pulls/megabytelabs/sonar-python?logo=docker&logoColor=white&style=flat-square">
  </a>
  <a title="DockerHub stars" href="https://hub.docker.com/repository/docker/megabytelabs/sonar-python" target="_blank">
    <img alt="Stars" src="https://img.shields.io/docker/stars/megabytelabs/sonar-python?logo=docker&logoColor=white&style=flat-square">
  </a>
  <a title="Documentation" href="https://megabyte.space/docs/docker" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg?logo=readthedocs&logoColor=white&style=flat-square" />
  </a>
  <a title="License: MIT" href="https://github.com/ProfessorManhattan/codeclimate-sonar-python/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-yellow.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEUAAAD///+l2Z/dAAAAAXRSTlMAQObYZgAAAHpJREFUCNdjYOD/wMDAUP+PgYHxhzwDA/MB5gMM7AwMDxj4GBgKGGQYGCyAEEgbMDDwAAWAwmk8958xpIOI5zKH2RmOyhxmZjguAiKmgIgtQOIYmFgCIp4AlaQ9OczGkJYCJEAGgI0CGwo2HmwR2Eqw5SBnNIAdBHYaAJb6KLM15W/CAAAAAElFTkSuQmCC&style=flat-square" />
  </a>
</div>

> </br><h4 align="center">**A slim Python CodeClimate engine for GitLab CI**</h4></br>

<a href="#table-of-contents" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Table of Contents

- [Overview](#overview)
  - [Standalone](#standalone)
  - [Slim Build](#slim-build)
  - [Versioning](#versioning)
  - [Testing](#testing)
- [Requirements](#requirements)
  - [Development Requirements](#development-requirements)
- [Examples](#examples)
  - [Integrating with GitLab CI](#integrating-with-gitlab-ci)
    - [CodeClimate GitLab CI Example](#codeclimate-gitlab-ci-example)
    - [CodeClimate CLI Walkthrough](#codeclimate-cli-walkthrough)
    - [Standalone Integration](#standalone-integration)
  - [Building the Docker Container](#building-the-docker-container)
  - [Building a Slim Container](#building-a-slim-container)
  - [Build Tools](#build-tools)
- [Philosophy](#philosophy)
- [Contributing](#contributing)
- [License](#license)

<a href="#overview" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Overview

This project is the home of a **[Sonar Python](https://github.com/SonarSource/sonar-python)** [CodeClimate](https://codeclimate.com/) engine. It was built to integrate Sonar Python results into the GitLab merge request web UI. The image that this project builds is intended to be used with CodeClimate so **running this container without CodeClimate is not supported**. It is merely for enhancing the quality of the linting results within the GitLab UI.

### Standalone

If you are interested in using the tool and have no need for CodeClimate integration, you can get the `latest`, `slim`, and versioned images without CodeClimate-related code by removing the `codeclimate-` string from the image name. For example, if the image is named `megabytelabs/codeclimate-sonar-python`, then you can get the same image without CodeClimate-related code by using the `megabytelabs/sonar-python` image. For a full listing of images to choose from, check out the [DockerHub page for this project](https://hub.docker.com/r/megabytelabs/sonar-python).

_Note:_ The DockerHub page for the CodeClimate engine version of this project is located on the aforementioned DockerHub page and also on a [separate DockerHub page](https://hub.docker.com/r/megabytelabs/codeclimate-sonar-python) prefixed with `codeclimate-`.

### Slim Build

All of our CodeClimate engine projects include two variants. One is the regular build that is created using Docker and the `Dockerfile` that is in the root of this project. The other build is a `slim` build that is built via DockerSlim. If you are looking for stability and want to take advantage of the `slim` build, then you should specify an exact version when referencing the image (e.g. `megabytelabs/codeclimate-package:5.4.0-slim` instead of `megabytelabs/codeclimate-package:slim`).

### Versioning

Whenever possible, we tag our Docker image versions with the corresponding version of the software that the Docker image is used for. For instance, if you are using the ESLint CodeClimate image, then the `megabytelabs/codeclimate-eslint:5.4.0` image means that it likely includes ESLint at version `5.4.0`. There may be some exceptions but this is what we strive for.

### Testing

Multiple methods of testing are used to ensure both the `latest` and `slim` build function properly. The `Dockerfile-test.yml` file in the root of the repository is a [container-structure-test]() that ensures that each container is working properly. On top of that, we also run commands on sample projects stored in `test/compare/` to ensure that the output from the `latest` image matches the output from the `slim` image. In some other scenarios, we also include unit tests for custom code written for the CodeClimate engine.

<a href="#requirements" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Requirements

- **[Docker](https://gitlab.com/megabyte-labs/ansible-roles/docker)**

### Development Requirements

- **[DockerSlim](repository.project.dockerslim)** - Used for generating compact, secure images
- **[jq](repository.project.jq)** - Used for interacting with JSON
- **[Node.js](repository.project.node)** (_>=14.18_) - Utilized to add development features like a pre-commit hook and maintenance tasks
- _Many more_ requirements that are _dynamically installed_ as they are needed by our `Taskfile.yml` via our custom [go-task/task](https://github.com/go-task/task) fork named **[Bodega](https://github.com/ProfessorManhattan/Bodega)**

If you choose to utilize the development tools provided by this project then at some point you will have to run `bash start.sh` (or `npm i` which calls `bash start.sh` after it is done). The `start.sh` script will attempt to automatically install any requirements (without sudo) that are not already present on your build system to the user's `~/.local/bin` folder. The `start.sh` script also takes care of other tasks such as generating the documentation by calling tasks defined in the `Taskfile.yml`. For more details on how the optional requirements are used and set up, check out the [CONTRIBUTING.md](https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python/-/blob/master/docs/CONTRIBUTING.md) guide.

When you are ready to start development, run `task --menu` to open an interactive dialog that will help you understand what build commands we have already engineered for you.

<a href="#examples" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Examples

There are several different ways you can use the Docker container provided by this project. For starters, you can test the tool out locally by running:

```shell
docker run -it -v ${PWD}:/work -w /work --rm megabytelabs/sonar-python:latest --help
```

This allows you to run Sonar Python without installing it locally. It also removes the image from your system when you are done. This could be good for security since the application is within a container and also keeps your file system clean.

You can also add a bash alias to your `~/.bashrc` file so that you can run the Sonar Python command at any time. To do this, add the following snippet to your `~/.profile` file (or equivalent):

```shell
sonar-python() {
    docker run -it -v ${PWD}:/work -w /work --rm megabytelabs/sonar-python:latest "$@"
}
```

_Note: Some CLI tools run without any arguments passed in. For example, the CLI tool `ansible-lint` runs by simply entering `ansible-lint` in the terminal. Our Docker images default command is to show the version so to get around this quirk you would run `ansible-lint .`._

### Integrating with GitLab CI

The main purpose of this project is to build a Docker container that can be used in CI pipelines and during GitLab CI CodeClimate analysis.

#### CodeClimate GitLab CI Example

If you are interested in improving the GitLab web UI for your merge requests, then you can take a peek at our [GitLab CI configuration for CodeClimate](https://gitlab.com/megabyte-labs/gitlab-ci/-/raw/master/lint/codeclimate.gitlab-ci.yml). It has to run in a single CI stage that includes all the linters you want to report on because GitLab CI only accepts one CodeClimate report artifact.

#### CodeClimate CLI Walkthrough

If you want to incorporate CodeClimate into your project, you need to ensure that you have a `.codeclimate.yml` properly setup in the root of your project. At the very minimum, the file might look something like this:

```yml
---
engines:
  sonar-python:
    enabled: true
exclude_paths:
  - 'node_modules/**'
```

Also, before you run the CodeClimate CLI, you need to ensure that this project's CodeClimate image is pulled to your local cache and properly tagged for CodeClimate. You can accomplish this by running:

```shell
docker pull megabytelabs/codeclimate-sonar-python:latest
docker tag megabytelabs/codeclimate-sonar-python:latest codeclimate/codeclimate-sonar-python:latest
```

After that, you need to invoke the CodeClimate CLI by passing the `--dev` parameter. This may seem hacky but it is the only way of using CodeClimate engines that are not officially hosted in the `codeclimate` namespace on DockerHub. Your CLI command might look something like this:

```shell
brew install codeclimate/formulae/codeclimate
codeclimate analyze --dev
```

Or if you want to see an HTML report:

```shell
brew install codeclimate/formulae/codeclimate
codeclimate analyze --dev  -f html > codeclimate-report.html
```

#### Standalone Integration

If you want to incorporate this CI pipeline tool into GitLab CI project without CodeClimate integration then your first step would be to create a `.gitlab-ci.yml` file in the root of your GitLab repository. Your `.gitlab-ci.yml` file should look something like this:

```yaml
---
stages:
  - lint

include:
  - remote: https://gitlab.com/megabyte-labs/gitlab-ci/-/raw/master/lint/sonar-python.gitlab-ci.yml
```

That is it! Sonar Python will now run anytime you commit code (that matches the parameters laid out in the `remote:` file above). Ideally, for production, you should copy the source code from the `remote:` link above to another location and update the `remote:` link to the file's new location. That way, you do not have to worry about any changes that are made to the `remote:` file by our team.

{{ load:docs/partials/guide.md }}

### Building the Docker Container

You may have a use case that requires some modifications to our Docker image. After you make changes to the Dockerfile, you can upload your custom container to [Docker Hub](website.dockerhub) using the following code:

```shell
export DOCKERHUB_USERNAME=Your_DockerHub_Username_Here
export DOCKERHUB_PASSWORD=Your_DockerHub_Password_Here
docker login -u "$DOCKERHUB_USERNAME" -p "$DOCKERHUB_PASSWORD" docker.io
docker build --pull -t "$DOCKERHUB_USERNAME/sonar-python:latest" .
docker push "$DOCKERHUB_USERNAME/sonar-python:latest"
```

After setting your DockerHub username and password, the commands above will build the Docker image and upload it to [Docker Hub](https://hub.docker.com/) where it will be publicly accessible. You can see this logic being implemented as a [GitLab CI task here](repository.link.dockerhub_ci_task). This GitLab CI task works in conjunction with the `.gitlab-ci.yml` file in the root of this repository.

### Building a Slim Container

Some of our repositories support creating a slim build via [DockerSlim](https://gitlab.com/megabyte-labs/ansible-roles/dockerslim). According to [DockerSlim's GitHub page](https://github.com/docker-slim/docker-slim), slimming down containers reduces the final image size and improves the security of the image by reducing the attack surface. It makes sense to create a slim build for anything that supports it, including Alpine images. On their GitHub page, they report that some images can be reduced in size by up to 448.76X. This means that if your image is naturally **700MB** then it **can be reduced to 1.56MB**! It works by removing everything that is unnecessary in the container image.

As a convenience feature, we include a command defined in `package.json` that should build the slim image. Just run `task docker:build` after running `npm i` (or `bash start.sh` if you do not have `Node.js` installed) in the root of this repository to build both the `latest` and `slim` builds.

To build and publish a `slim` Dockerfile to Docker Hub manually, you can use the following as a starting point:

```shell
export DOCKERHUB_USERNAME=Your_DockerHub_Username_Here
export DOCKERHUB_PASSWORD=Your_DockerHub_Password_Here
docker login -u "$DOCKERHUB_USERNAME" -p "$DOCKERHUB_PASSWORD" docker.io
docker build -t "$DOCKERHUB_USERNAME/sonar-python:latest" .
docker-slim build --tag $DOCKERHUB_USERNAME/sonar-python:slim {{#if (eq (typeOf dockerSlimCommand) "string")}}dockerSlimCommand}}{{/if{{#if (not (eq (typeOf dockerSlimCommand) "string"))}}dockerSlimCommand[slug]}}{{/if $DOCKERHUB_USERNAME/sonar-python:latest
docker push "$DOCKERHUB_USERNAME/sonar-python:slim"
```

It may be possible to modify the DockerSlim command above to fix an issue or reduce the footprint even more than our command. You can modify the slim build command inline in the `package.json` file under `blueprint.dockerSlimCommand`. Some of our repositories have multiple build targets in the `Dockerfile` so those repositories will have multiple `dockerSlimCommands`.

If you come up with an improvement, please do [open a pull request](repository.group.dockerCodeClimate/sonar-python/-/issues/new). And again, make sure you replace `DOCKERHUB_USERNAME` and `DOCKERHUB_PASSWORD` in the snippet above with your Docker Hub username and password. The commands in the snippet above will build the slim Docker image and upload it to [Docker Hub](https://hub.docker.com/) where it will be publicly accessible.

### Build Tools

You might notice that we have a lot of extra files considering that this repository basically boils down to a single Dockerfile. These extra files are meant to make team development easier, predictable, and enjoyable. If you have a recent version of [Node.js](repository.project.node) installed, you can get started using our build tools by running `npm i` (or by running `bash start.sh` if you do not currently have Node.js installed) in the root of this repository. After that, you can run `task --list` to see a list of the available development features. Alternatively, you can run `task --menu` to view an interactive menu that will guide you through the development process.

_Note:_ We use a custom-built version of [go-task/task](https://github.com/go-task/task) so if you already have it installed then you should either replace it with our version or use a different bin name for `task`.

For more details, check out the [CONTRIBUTING.md](https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python/-/blob/master/CONTRIBUTING.md) file.

<a href="#philosophy" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Philosophy

Utilizing Continuous Integration (CI) tools can improve developer efficiency drastically. They allow you to do things like scan new code for possible errors and automatically deploy new software.

This repository is home to the build instructions for a Docker container that is just one piece to the CI puzzle. Nearly all of [our CI pipeline Docker projects](https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline) serve a single purpose.

Instead of using one of the countless pretty_name public Docker images available, we create it in-house so we know exactly what code is present in the container. We also ensure that all of our CI pipeline images are as small as possible so that our CI environment can download and run the specific task as quickly as possible. Using this repository as a base, you too can easily create your own in-house CI pipeline container image.

At first glance, you might notice that there are many files in this repository. Nearly all the files and folders that have a period prepended to them are development configurations. The tools that these files and folders configure are meant to make development easier and faster. They are also meant to improve team development by forcing developers to follow strict standards so that the same design patterns are used across all of our repositories.

<a href="#contributing" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/ProfessorManhattan/codeclimate-sonar-python/issues). If you would like to contribute, please take a look at the [contributing guide](https://github.com/ProfessorManhattan/codeclimate-sonar-python/blob/master/docs/CONTRIBUTING.md).

<details>
<summary><b>Sponsorship</b></summary>
<br/>
<blockquote>
<br/>
Dear Awesome Person,<br/><br/>
I create open source projects out of love. Although I have a job, shelter, and as much fast food as I can handle, it would still be pretty cool to be appreciated by the community for something I have spent a lot of time and money on. Please consider sponsoring me! Who knows? Maybe I will be able to quit my job and publish open source full time.
<br/><br/>Sincerely,<br/><br/>

**_Brian Zalewski_**<br/><br/>

</blockquote>

<a title="Support us on Open Collective" href="https://opencollective.com/megabytelabs" target="_blank">
  <img alt="Open Collective sponsors" src="https://img.shields.io/opencollective/sponsors/megabytelabs?logo=opencollective&label=OpenCollective&logoColor=white&style=for-the-badge" />
</a>
<a title="Support us on GitHub" href="https://github.com/ProfessorManhattan" target="_blank">
  <img alt="GitHub sponsors" src="https://img.shields.io/github/sponsors/ProfessorManhattan?label=GitHub%20sponsors&logo=github&style=for-the-badge" />
</a>
<a href="https://www.patreon.com/ProfessorManhattan" title="Support us on Patreon" target="_blank">
  <img alt="Patreon" src="https://img.shields.io/badge/Patreon-Support-052d49?logo=patreon&logoColor=white&style=for-the-badge" />
</a>

</details>

<a href="#license" style="width:100%"><img style="width:100%" src="https://gitlab.com/megabyte-labs/assets/-/raw/master/png/aqua-divider.png" /></a>

## License

Copyright © 2020-2021 [Megabyte LLC](https://megabyte.space). This project is [MIT](https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python/-/blob/master/LICENSE) licensed.
