import XCTest
import ScriptingUtilities
@testable import MicrosoftOutlookScripting

final class MicrosoftOutlookScriptingTests: XCTestCase {
    func testExample() {
        let outlook = application(name: "Microsoft Outlook") as! MicrosoftOutlookApplication
        outlook.activate() // Should open Outlook.
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
