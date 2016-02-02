## hackweek (2015-12-??) session
### install and get started:
1. opensuse leap only need repo for openQA, perl module repo is not manditory
2. old version zypper won't refresh repo data automatically ---> package version conflict
3. pool should be owned by _openqa-worker
4. played steps: openqa and worker been installed; then fetchneedle; have the template as configuration file; run client script to create job


### Q&A:
1. how should the loaded configuration been delete---> db file be delete and init again
2. add configuration from web---> refer to the templates file for variables settings 
3. variables added when run the client script...---> used to uniquely specify the test job
4. db init forcely---> db file remove and then use command: initdb --prepare_init --force and initdb --init_database --force ---> restart openqa-webui and apache2 service
5. cancel the queued jobs---> not sure about command line method yet
6. content for directory pool/x: durint testing, files were temproryly stored here, when test is done files in this folder will be moved to testresult folder 
7. opensuse and enterprise version share the same folder 'lib' 'script' 'test', use the main.pm file to determine which DISTRO is running: and stored in the separate folder /var/lib/openqa/tests/sle
8. needles for enterprise version(SLED and SLES share the same) could be found in gitlab


### tips:
1. launch example: perl /usr/share/openqa/script/client isos post ISO=openSUSE-13.2-DVD-x86_64.iso DISTRI=opensuse VERSION=13.2 FLAVOR=DVD ARCH=x86_64 BUILD=GM
2. FLAVOR means the iso type


### during test:
1. each screenshot was created by the assert/check(green) or save(gray) screen
2. default ticked tag was the ones included in the used needles


### further:
1. sudo -u _openqa-worker /var/lib/openqa/script/worker --instance x: permission deny
2. VARIABLES like HDD: scenario try
3. when fail, use INTERACTIVE mode TO WORKAROUND


## regression test case deploy session

### 2016-2-1
1. code review --- main.pm ->
  - logical save disk: shutdown.pm --> shutdown_assert
  - logical regression test case running
  - logical case schedule

2. webUI modified needle pushed to git automatically

3. opensuse and sle difference

*to be done*
>1. how client schedule worker to run the whole process; 
>2. ssh to 208, get the virtual image for regression test ---> make virtual image
>for test by self
>3. fork repo, configure git to make webUI modified needle been pushed
>   automatically
>
### 2016-2-2
1. issue debug when launch test: DISTRI should be sle instead of sled --- isos
   or jobs meaning for??? (works the same) --- verify main.pm file is from the
correct repo --- update openQA to latest version (including all of the code and
needles)

2. play with git branch and remote

3. 
