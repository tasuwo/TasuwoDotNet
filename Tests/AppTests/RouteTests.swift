import XCTest
import Foundation
import Testing
import HTTP
@testable import Vapor
@testable import App

/// This file shows an example of testing
/// routes through the Droplet.

class RouteTests: TestCase {
    let drop = try! Droplet.testable()

    func testWelcome() throws {
        try drop
            .testResponse(to: .get, at: "/")
            .assertStatus(is: .ok)
            .assertBody(contains: "tasuwo.net")
    }
}

// MARK: Manifest

extension RouteTests {
    /// This is a requirement for XCTest on Linux
    /// to function properly.
    /// See ./Tests/LinuxMain.swift for examples
    static let allTests = [
        ("testWelcome", testWelcome),
        ("testHello", testHello),
        ("testInfo", testInfo),
    ]
}
