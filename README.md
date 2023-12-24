# Log
[![Swift 5.9](https://img.shields.io/badge/Swift-5.9-orange.svg?style=flat)](https://developer.apple.com/swift/)
![Platform](https://img.shields.io/badge/platform-iOS-light_gray)
![SPM](https://img.shields.io/badge/SPM-Compatible-blue)


## Introduction
Provides a lightweight logging implementation for Swift!


## Usage
**Add dependencies** <br/><br/>
Add this repository's link to Package Dependencies
```bash
https://github.com/JYPjoy/Log
```
<br/>

**Import packages**
```swift
import Log
```

<br/>

**Basic Usages**
```swift
Log.t("This is a Trace message.")
Log.d("This is a Debug message.")
Log.i("This is a Informational message.")
Log.n("This is a Notice message.")
Log.w("This is a Warning.")
Log.e("This is a Error.")
Log.c("This is a Critical error.")
```
<br/>

**Logging Levels**

- You can specify the level of output on initialization. You will see output of that level, and all levels below that. <br/>Ordered from **Least** to **most Severe**.
- Reference: [Swift Official Log Guidelines](https://www.swift.org/server/guides/libraries/log-levels.html)

<br/>

The order is: 
  1. `t(TRACE)`: Appropriate for messages that contain information normally of use only when tracing the execution of a program.
  2. `d(DEBUG)`: Appropriate for messages that contain information normally of use only when debugging a program.
  3. `i(INFO)`: Appropriate for informational messages.
  4. `n(NOTICE)`: Appropriate for conditions that are not error conditions, but that may require special handling.
  5. `w(WARNING)`: Appropriate for messages that are not error conditions, but more severe than .notice
  6. `e(ERROR)`: Appropriate for error conditions.
  7. `c(CRITICAL)`: Appropriate for critical error conditions that usually require immediate attention.

<br/>

## License
This library is licensed under MIT license. Full license text is available in [LICENSE](https://github.com/JYPjoy/Log/blob/main/LICENSE). 

