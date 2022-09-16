# iOS-Robotframework-Appium-POM 
# Getting & Setting up the project

1. Clone the project at any location
2. Go to cloned project folder
3. Install all the dependencies by running the following command
      ```bash  
       pip install -r requirements.txt
      `````
Run Single Test Case:
```bash
robot .\test\test_robotappium.robot
```
Run Suite:
```bash
robot .\test
```
Run Test Cases To Generate Allure Result
```bash
$ robot --listener allure_robotframework .\test\test_robotappium.robot
```
 
