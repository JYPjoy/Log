// The Swift Programming Language
// https://docs.swift.org/swift-book
// Created by Jiyoung(Joy) Park on 11/26/23.

import Foundation

open class Log {
   
    // MARK: - Logging Type
    /// Enum which maps an appropriate symbol which added as prefix for each log message
    /// Ordered from Least to most Severe (ref.: https://www.swift.org/server/guides/libraries/log-levels.html)
    enum LogLevel {
        case t // TRACE
        case d // DEBUG
        case i // INFO
        case n // NOTICE
        case w // WARNING
        case e // ERROR
        case c // CRITICAL
        
        var prefix: String {
            switch self {
            case .t: return "[💬TRACE]"
            case .d: return "[🐞DEBUG]"
            case .i: return "[ℹ️INFO]"
            case .n: return "[📣NOTICE]"
            case .w: return "[⚠️WARNING]"
            case .e: return "[🔧ERROR]"
            case .c: return "[🔥CRITICAL]"
            }
        }
    }
    
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm "
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
        return formatter
    }
    
    
    // MARK: - Logging Method
    /// Appropriate for messages that contain information normally of use only when tracing the execution of a program.
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func t( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.t.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }
    
    /// Appropriate for messages that contain information normally of use only when debugging a program.
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func d( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.d.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }

    /// Appropriate for informational messages.
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func i( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.i.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }
   
    /// Appropriate for conditions that are not error conditions, but that may require special handling.
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func n( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.n.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }
    
    /// Appropriate for messages that are not error conditions, but more severe than .notice
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func w( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.w.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }
    
    /// Appropriate for error conditions.
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func e( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.e.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }
   
    /// Appropriate for critical error conditions that usually require immediate attention.
    ///
    /// - Parameters:
    ///   - object: Object or message to be logged
    ///   - filename: File name from where loggin to be done
    ///   - line: Line number in file from where the logging is done
    ///   - funcName: Name of the function from where the logging is done
    public class func c( _ object: Any,
                  filename: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
        #if DEBUG
        Swift.print("\(Log.dateFormatter.string(from: Date()))\(LogLevel.c.prefix) [\(getFileName(filePath: filename)): \(line)] \(funcName) → \(object)")
        #endif
        }

    /// Extract the file name from the file path
    ///
    /// - Parameter filePath: Full file path in bundle
    /// - Returns: File Name with extension
    private class func getFileName(filePath: String) -> String {
        let components = filePath.components(separatedBy: "/")
        return components.isEmpty ? "" : components.last!
    }
}
