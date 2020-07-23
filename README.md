# UI Automate test with robot-framework

## Requirement
* Python 2.6+ or Python 3.5+ 
* Chrome version 83+

Library include

* robotframework
* robotframework-seleniumlibrary
* webdrivermanager
* geckodriver for firefox

## How to run robot with docker

```bash
$ git clone https://git.touchdevops.com/trafficreporter/robot-framework.git
$ cd robot-framework
$ docker build -t robot-docker .
$ docker run --rm -it -v $(pwd)/robot:/robot robot-docker --outputdir report demo.robot 
```
## Run Robot
```bash
$ robot <file.robot>
$ robot --outputdir <export_folder> <file.robot>