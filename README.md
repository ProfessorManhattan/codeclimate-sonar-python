# Code Climate Sonar-Python Engine

`codeclimate-sonar-python` is a Code Climate engine that wraps [Sonarlint](http://www.sonarlint.org) in standalone mode.

## ➤ Requirements

- **[Docker](https://gitlab.com/megabyte-labs/ansible-roles/docker)**
- [CodeClimate CLI](https://github.com/codeclimate/codeclimate)

### Optional Requirements

- [DockerSlim](https://gitlab.com/megabyte-labs/ansible-roles/dockerslim) - Used for generating compact, secure images
- [Google's Container structure test](https://github.com/GoogleContainerTools/container-structure-test) - For testing the Docker images



## Installation
Creating the fat image
```
make image
```
Creating the docker-slim image
```
make slim
```
## Tests
To run container-structure-tests
```
make test
```
To run gradle based tests
```
make gradle-test
```

## Usage

1. If you haven't already, [install the Code Climate CLI](https://github.com/codeclimate/codeclimate).
2. Configure a `.codeclimate.yml` file in your repo.
```yml
engines:
  sonar-python:
    enabled: true
    config:
      tests_patterns:
        - src/test/**
exclude_paths:
  - build/
```
3. Run `codeclimate analyze`.

## Custom configurations

### Severity
Ignore issues with severity below the minimum:
```
engines:
  sonar-python:
    enabled: true
    config:
      minimum_severity: critical  # default: major
                                  # valid values are: info, minor, major, critical, blocker
```

## Sonar Documentation

http://www.sonarlint.org/commandline

http://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner

Issue Tracker: http://jira.sonarsource.com/browse/SLCLI

## Copyright

This engine is developed by Code Climate using [SonarLint](http://www.sonarlint.org/commandline), it is not endorsed by SonarSoruce.

See [LICENSE](LICENSE)
