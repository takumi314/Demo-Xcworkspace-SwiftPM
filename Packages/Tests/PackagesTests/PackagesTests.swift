import XCTest
@testable import Packages

final class PackagesTests: XCTestCase {

    func testSuccessExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let packages = Packages()

        XCTAssertEqual(packages.text, "Hello, World!")
    }

    func testFailureExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let packages = Packages()

        XCTAssertNotEqual(packages.text, "Ola, World!")
    }

    static var allTests = [
        ("testExample", testSuccessExample, testFailureExample),
    ]
}
