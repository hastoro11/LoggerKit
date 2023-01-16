public struct Logger: Loggable {
    
    static func error(messages: Any?..., file: String = #file, function: String = #function, line: Int = #line) {
        handleLog(level: .error, messages: messages, file: file, function: function, line: line)
    }
    
    static func info(messages: Any?..., file: String = #file, function: String = #function, line: Int = #line) {
        handleLog(level: .info, messages: messages, file: file, function: function, line: line)
    }
    
    static func debug(messages: Any?..., file: String = #file, function: String = #function, line: Int = #line) {
        handleLog(level: .debug, messages: messages, file: file, function: function, line: line)
    }
    
    static func verbose(messages: Any?..., file: String = #file, function: String = #function, line: Int = #line) {
        handleLog(level: .verbose, messages: messages, file: file, function: function, line: line)
    }
    
    static func warning(messages: Any?..., file: String = #file, function: String = #function, line: Int = #line) {
        handleLog(level: .warning, messages: messages, file: file, function: function, line: line)
    }
    
    static func severe(messages: Any?..., file: String = #file, function: String = #function, line: Int = #line) {
        handleLog(level: .severe, messages: messages, file: file, function: function, line: line)
    }
    
    public init() {
    }
}

public extension Logger {
    enum LogLevel: String{
        case error = "⁉️"
        case info = "ℹ️"
        case debug = "🐞"
        case verbose = "🔬"
        case warning = "⚠️"
        case severe = "🔥"
    }
}

public extension Logger {
    static func handleLog(
        level: LogLevel,
        messages: Any?..., file:
        String = #file,
        function: String = #function,
        line: Int = #line) {
            
            var text: String = "[\(level.rawValue)] "
            
            let filename = file.split(separator: "/").last ?? ""
            text += "[\(filename)]"
            text += ": [\(function): \(line)] => "
            
            for message in messages {
                if let message = message {
                    text += String(describing: message) + " "
                }
            }
            
            #if DEBUG
                print(text)
            #endif
        }
}
