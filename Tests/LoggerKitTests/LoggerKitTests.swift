import XCTest
@testable import LoggerKit

final class LoggerKitTests: XCTestCase {
    
    func testError() {
        Logger.error("Example of error log")
        ///Expected result: [⁉️] [LoggerKitTests.swift]: [testError(): 7] => Example of error log
        
    }
    
    func testInfo() {
        Logger.info("Example of info log")
        ///Expected result: [ℹ️] [LoggerKitTests.swift]: [testInfo(): 13] => Example of info log
        
    }
    
    func testDebug() {
        Logger.debug("Example of debug log")
        ///Expected result: [🐞] [LoggerKitTests.swift]: [testDebug(): 19] => Example of debug log
        
    }
    
    func testVerbose() {
        Logger.verbose("Example of verbose log")
        ///Expected result: [🔬] [LoggerKitTests.swift]: [testVerbose(): 25] => Example of verbose log
        
    }
    
    func testWarning() {
        Logger.warning("Example of warning log")
        ///Expected result: [⚠️] [LoggerKitTests.swift]: [testWarning(): 31] => Example of warning log
        
    }
    
    func testSevere() {
        Logger.severe("Example of severe log")
        ///Expected result: [🔥] [LoggerKitTests.swift]: [testSevere(): 37] => Example of severe log
        
    }
    
    func testNonStrings() {
        let int = 2
        let double = 13.14
        let error = NSError(domain: "com.test", code: -1, userInfo: [NSLocalizedDescriptionKey: "Error test"])
        
        struct TestObject {
            let id = UUID().uuidString
            let name: String
            let value: Int
        }
        
        let testObject = TestObject(name: "Test Object", value: -1)
        
        Logger.error(error)
        Logger.info(int)
        Logger.verbose(double)
        Logger.warning(testObject)
    }
}
