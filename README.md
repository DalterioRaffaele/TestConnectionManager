# TestConnectionManager

TestConnectionManager is a simple HTTP client for Swift.

var testConnectionManager = TestConnectionManager()

testConnectionManager.get("https://it.wikipedia.org/wiki/Hypertext_Transfer_Protocol", callback: {err, response, body in
  if( err == nil ) {
    println(body)
  }
})

[![CI Status](http://img.shields.io/travis/DalterioRaffaele/TestConnectionManager.svg?style=flat)](https://travis-ci.org/DalterioRaffaele/TestConnectionManager)
[![Version](https://img.shields.io/cocoapods/v/TestConnectionManager.svg?style=flat)](http://cocoapods.org/pods/TestConnectionManager)
[![License](https://img.shields.io/cocoapods/l/TestConnectionManager.svg?style=flat)](http://cocoapods.org/pods/TestConnectionManager)
[![Platform](https://img.shields.io/cocoapods/p/TestConnectionManager.svg?style=flat)](http://cocoapods.org/pods/TestConnectionManager)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TestConnectionManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TestConnectionManager'
```

## Author

DalterioRaffaele, r.dalterio@almaviva.it

## License

TestConnectionManager is available under the MIT license. See the LICENSE file for more info.
