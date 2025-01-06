# FASTWORK UI TEST with ROBOT FRAMEWORK

1. How to install robot framework

Install the latest version (does not upgrade)

```
pip install robotframework

```

2. This is required robot framework library

2.1 SeleniumLibrary

```
pip install --upgrade robotframework-seleniumlibrary

```

3. How to run robotframework automation

3.1 Run by folder

```
robot -v ENV:uat keywords/testcases

```

3.2 Run by file name

```
robot -v ENV:uat keywords/testcases/FW_01.robot

```

3.3 Run by Tag feature

```
robot -i sign_up_feature -v ENV:uat keywords/testcases

```

3.4 Run by Tag case no

```
robot -i FW_01 -v ENV:uat keywords/testcases

```

4. How to view automation results
4.1 Click file log.html
4.2 Select Open with Live Server