# UI Automate test with robot-framework

## Requirement
* Python 2.6+ or Python 3.5+ 
* Chrome version 83+

Library include

* robotframework
* robotframework-seleniumlibrary
* webdrivermanager
* geckodriver for firefox
## Installation

```bash
$ pip install robotframework
$ pip install robotframework-seleniumlibrary
$ pip install webdrivermanager
$ webdrivermanager chrome firefox 
```
## Install geckodriver for firefox
Download latest release => https://github.com/mozilla/geckodriver/releases
```bash
$ wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
$ sudo sh -c 'tar -x geckodriver -zf geckodriver-v0.26.0-linux64.tar.gz -O > /usr/bin/geckodriver'
$ sudo chmod +x /usr/bin/geckodriver
```
## Run Robot
```bash
$ robot <file.robot>
$ robot --outputdir <export_folder> <file.robot>