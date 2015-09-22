# Docker Java JRE Container

Docker container that also includes Open Java 8 *JRE* install for running production applications.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisites

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

Normally, this would be used as a base image for a Java application.
The example Dockerfile below will add custom artefacts and an entrypoint to run them.

```
# Use this repo
FROM quay.io/ukhomeofficedigital/openjdk8-jre:v0.1.0

# Add application artefacts
ENV app_deploy_path=/var/lib/myapp
COPY my_jars/* ${app_deploy_path}/
ENTRYPOINT ["java -jar ${app_deploy_path}/myapp.jar"]

```

## Contributing

Feel free to submit pull requests and issues. If it's a particularly large PR, you may wish to discuss
it in an issue first.

Please note that this project is released with a [Contributor Code of Conduct](code_of_conduct.md). 
By participating in this project you agree to abide by its terms.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/UKHomeOffice/docker-openjdk8-jre/tags). 

## Authors

* **Lewis Marshall** - *Initial work* - [Lewis Marshall](https://github.com/LewisMarshall)

See also the list of [contributors](https://github.com/UKHomeOffice/docker-openjdk8-jre/contributors) who 
participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* [OpenJDK8](http://openjdk.java.net/projects/jdk8/)
