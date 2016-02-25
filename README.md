# CloudButton
Simple web app and iOS SDK to flip an online "switch" that holds its state across platforms.

<img src="https://raw.githubusercontent.com/shepting/CloudButton/master/Media/Demo%20System.png" />

## Swift SDK
 - Swift code that talks to iCloud
 - `CloudButton.turnOn()`
 - `CloudButton.turnOff()`
 - `CloudButton.toggle()`

## Demo App
 - One button which shows the status

## Amazon Lambda Service
 - Python service that talks to iCloud from the server
 - `switchStatus()`
 - `setSwitchStatus()`

## Amazon Lambda (different repo)
 - return door XML for my front door
 - 
 
## Hopeful Features
 - [ ] Playground
 - [ ] Add FLEX to demo app
 - [ ] Add Answers events
 - [ ] Set up Podspec for SDK
 - [ ] Try rome demo with SDK
 - [ ] Use local pods for demo app
 - [ ] Use `cocoapods-keys` for Amazon keys
 - [ ] Setup `Fastlane` for tests, nightly build
