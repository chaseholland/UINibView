# NibView

[![CI Status](http://img.shields.io/travis/Chase Holland/NibView.svg?style=flat)](https://travis-ci.org/Chase Holland/NibView)
[![Version](https://img.shields.io/cocoapods/v/NibView.svg?style=flat)](http://cocoapods.org/pods/NibView)
[![License](https://img.shields.io/cocoapods/l/NibView.svg?style=flat)](http://cocoapods.org/pods/NibView)
[![Platform](https://img.shields.io/cocoapods/p/NibView.svg?style=flat)](http://cocoapods.org/pods/NibView)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

NibView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NibView"
```

## About

This is a super simple pod for those times when you want to create a UIView from a nib (.xib), but you're tired of typing
all the extra code to do the automatic loading when you add your custom nib-based view to another view or view controller.

I chose to hijack the "UI" name prefix because there isn't anything called UINibView, and I don't expect a similar class
from Apple in the future. If it does become a thing, you don't need this pod anymore! Also, "UINibView" was what I expected
it to be named when I used it, so I went with it.

## Usage

All you need to do (after installing the pod) is

1. Create a subclass of UINibView
2. Create a Resource->"View" from Apple's new file templates and name it the *exact same thing* as your subclass

ie. If your subclass is called MyView, your nib would be named MyView, too. So you'd have MyView.h, MyView.m, and MyView.xib.

3. Set the class type in the xib file to your view's name (ie MyView).
4. Drag a UIView from the templates into the view you want your custom view in.
5. Set the class type of the view in the storyboard / other nib for your custom class
6. Build / Run
7. ???
8. Profit

See the example file for more details, or feel free to open an issue or send me an email for further clarifications!

## Author

Chase Holland, lurch09@gmail.com

## License

NibView is available under the MIT license. See the LICENSE file for more info.
