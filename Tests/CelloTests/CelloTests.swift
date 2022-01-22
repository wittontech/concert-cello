import XCTest
@testable import Cello

final class CelloTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CelloModel().text, "Playing Cello")
    }
}
