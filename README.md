# Neugelb iOS Colors

This repository contains an iOS project developed in Swift, focusing on color-related functionalities. It utilizes the Swift Package Manager for dependency management and includes unit tests to ensure code reliability.

## Project Structure

- **Sources/**: Contains the main source code for the project.
- **Tests/NeugelbColorsTests/**: Holds the unit tests for the project.
- **Package.swift**: Defines the Swift package configuration.

## Requirements

- iOS 13.0 or later
- Swift 5.0 or later
- Xcode 12.0 or later

## Installation

To integrate this package into your project, add the following dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/NeugelbTest/neugelb-ios-colors.git", from: "1.0.0")
]
```

Then, include `"NeugelbColors"` as a dependency for your target:

```swift
target(
    name: "YourTargetName",
    dependencies: ["NeugelbColors"]
)
```

## Usage

Import the `NeugelbColors` module in your Swift files:

```swift
import NeugelbColors
```

*Provide examples of how to use the functionalities offered by the package.*

## Future Improvements

- **CI/CD Enhancements**: Further improve automation by refining build, test, and deployment workflows.
- **SwiftGen Integration**: Enhance type safety and performance using [SwiftGen](https://github.com/SwiftGen/SwiftGen) to generate type-safe accessors for assets.
- **More Unit Tests**: Expand test coverage to ensure robust functionality.
- **Documentation Improvements**: Add detailed API usage examples.

