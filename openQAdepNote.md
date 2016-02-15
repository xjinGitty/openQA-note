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
