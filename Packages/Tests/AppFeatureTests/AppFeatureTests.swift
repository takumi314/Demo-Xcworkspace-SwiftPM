import XCTest
@testable import AppFeature

final class AppFeatureTests: XCTestCase {

    func testSuccessExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let appFeature = AppFeature()

        XCTAssertEqual(appFeature.text, "Hello, World!")
    }

    func testFailureExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let appFeature = AppFeature()

        XCTAssertNotEqual(appFeature.text, "Hello, Japan!")
    }

    static var allTests = [
        ("testExample", testSuccessExample, testFailureExample),
    ]
}
