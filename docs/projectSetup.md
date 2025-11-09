# How to Setup Flutter Project 

## VS CODE EDITOR Setup 
- Install the visual studio code editor
- Install Flutter related plugin in visual studio code editor


## Create New Flutter Project
- ctrl + shift + P :- will prompt for creating new project. 
- select the different template like empty application, modular package. 
- for now we will select only an empty application 
- define the folder and the project name and press enter
- it will create the project template. 



## Project Template Explanation 
- Once you have created the flutter application then we will see some different
platform related files
- it will consists of the platform folders for web, windows, ios, linux, ios, android
- we will be creating our code in lib folder. 
- in future we may need to add some package and for that we will have to update the 
android, ios folders basically the platform folders
- for example in case of android we will have to update the build.gradle files and 
for ios we will have to update the   Info.plist
- pubspec.yaml file is an important file with which we will be working a lot. This
file is for configuring our flutter application. 
- 


## Running the emulators
- We can open the flutter project in android studio and I think we will be able 
to use the emulators directly from the android studio itself. 
- While running the flutter projects using the visual studio code editor we
generally have to run the emulators via CLI. 

### Running Emulators via CLI
Follow the below commands for running the emulators via CLI: 
- **flutter doctor** command which checks the health of the flutter. Make sure that everything
is setup and nothing is pending.
- **flutter emulators** - will list down all the emulators which are available. 
- **flutter emulators --launch <emulator_id>** this will launch the emulator given the emulator id
- **flutter run** command will run the project
- **r** press r in the terminal if the project is already running to enable the hot reload feature


**Note :-** that if we are running the project via CLI the hot reload option will not work and we will
have to enter **r** command for explicitly hot reloading. In order to leverage the hot reload functionality
we will have to run the flutter project via visual studio code editor itself. Please make sure that the 
relevant settings are already configured for hot reload. Otherwise you may refer to docs or stack overflow
links to configure these settings.
