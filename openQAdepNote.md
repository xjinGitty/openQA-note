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
   or jobs or workers follow the client command  meaning for??? (works the same) --- verify main.pm file is from the
correct repo --- update openQA to latest version (including all of the code and
needles)

2. play with git branch and remote

3. use templates or webUI for automatically create jobs

### 2016-2-3
1. initdb met permission issue: change the db folder to owned by geekotest

2. client with parameters isos and other variables will choose the customized
   job to run

 
## 2016-2-15
1. openQA version should be downgrade via yast for the naming rule changed
   (when would like to upgrade it)

## 2016-2-16-quesion:
1. to make sure worker could access the instance, should add key/secret pair of webui in the /etc/openqa/client.ini file where worker is installed
2. can [localhost] in the above file be replaced with the FQDN like [http://test.test]
3. when would like to configure remote worker: modify the worker installed client.ini file also? or just the the worker.ini file?

## 2016-2-17
1. send_key defined in the baseclass.pm under /usr/lib/os-autoinst/backend as
   pointd out in the testapi.pm file as: $bmwqemu::backend->send_key
2. try xev and the qemu send_key function
3. alt-f2 not work well: change the host key-mapping not use it; vncviewer
   localhost:91 --Shared; sleep 60; to make gnome-shell up successfully
--->performance issue
<<<<<<< HEAD


## 2016-2-22
1. origin and upstream remote repo added
2. fork repo sync automately-> done
3. in the origin repo, when makeing pull request to upstream, should exclude
   the difference from main.pm file (sle version) and all the openqa arch
relatd changes. only regression is required

=======
>>>>>>> b028a33155ad73049fc2e2996fa77fed3aba49eb
