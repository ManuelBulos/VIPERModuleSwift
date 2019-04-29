![](assets/header.jpg)

When you decide to use VIPER architecture in your project, it's very time consuming to create a new module, because you need create at least 5 files for each. This is why I've created this template.

## How to install

### Using installer
Double click installer.command file

### Using script
Execute this command in terminal:

```swift

sudo swift install.swift

```

If everything is ok you can now find your template in Xcode.

### Manually

Go to Application folder, right-click the Xcode application icon and choose 'Show Package Contents'. Then go to:

`Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application` and add "VIPER Module.xctemplate" file. Now you can find your template in Xcode.

## Easy to use

![](/assets/wizard.png)

## Generated code

This template generates all files that you need to create a new VIPER module. All generated code is written in Swift 5.

This is a module example:


- [Default](/assets/defaultOutput.md)

- [With divided Interactor (Input & Output)](/assets/inputOutput.md)


## VIPER diagram overview

![Preview](/assets/viper_diagram.png)


## What is VIPER?

VIPER is a backronym for View, Interactor, Presenter, Entity, and Router. This architecture is based on Single Responsibility Principle which leads to a clean architecture, to have a better structure for your iOS project.
Viper architecture is a good solution to build working software, iOS app to be proud of!

### Key advantages of Viper Architecture

-   Simplifies complex projects. Since modules are independent Viper is really good for large teams.
-   Makes it scalable. Enable developers to simultaneously work on it as seamlessly as possible
-   Decouples the code for reusability and  testability
-   Divides the application components based on its role
-   Sets clear responsibilities
-   Makes it easy to write automated tests since your  UI logic is separated from the business logic
-   It encourages a separation of concerns that makes it easier to adopt TDD. The Interactor contains pure logic that is independent of any UI, which makes it easy to drive with tests
-   Makes it easy to use
-   Creates clear and well-defined interfaces, independent of other modules. This makes it much easier to change the way your interface presents various modules to the user.
-   Makes it easier to track issues via crash reports due to the Single Responsibility Principle
-   Makes the source code cleaner, more compact and reusable
-   Reduces number of conflicts within the development team
-   Applies SOLID principles
-   Reduced number of merge conflicts
-   You may want to create initial architecture skeleton first and then give modules one by one to other developers to implement logic.
-   Makes codebase look similar. Becomes much faster reading others people code.

## Author

* [Manuel Bulos](https://www.twitter.com/manuelbulos)
