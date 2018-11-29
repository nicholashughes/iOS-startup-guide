# iOS Startup Guide

This is a startup guide for an iOS project covering how to use `.xcconfig` files to store `Xcode` configuration settings, and through them any configuration specific variables, ie settings for Debug / Release or Dev / Test / Stage / Prod.

## Table of Contents
- [Overview](#overview)
- [Using xcconfig files](#using-xcconfig-files)
- [References](#references)
    - [Generally good iOS practices](#generally-good-ios-practices)

## Overview
This guide covers setting up `.xcconfig` files as a place to store `Project` and `Target` settings. This enables us to create different builds using different project `schemes` and `configurations`. The end goal is a code base that is the same for Dev, Test, Stage, and Prod environments, though you can choose to have as many configurations as you want. This allows for settings, for example a server URL in Dev / Test / Stage / Prod, to be stored within the `.xcconfig` files. Doing this also makes working with project / target changes much easier to manage in configuration management, ie `git`.

## Using xcconfig files
As mentioned in the overview, `.xcconfig` files allow us to put the `Project` and `Target` settings there and move them out of the `project.pbxproj` file. This makes for much better configuration management as the `project.pbxproj` file can be arcane and difficult to read, and hence difficult to diff/merge. Since `Project` and `Target` settings will override `.xcconfig` files, it also allows us to test settings out in the project settings, and easily revert them, before committing them to the `.xcconfig` files.

Let's get started!

## References

#### Generally good iOS practices
Covers a good range of iOS topics, such as the pros and cons to using storyboards, dependency management, project structure, etc - all of which were used in this example project.

- https://github.com/futurice/ios-good-practices
