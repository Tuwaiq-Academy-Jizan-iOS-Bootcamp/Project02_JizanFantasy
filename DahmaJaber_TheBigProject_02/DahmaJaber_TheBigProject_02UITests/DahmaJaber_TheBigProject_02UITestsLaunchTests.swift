//
//  DahmaJaber_TheBigProject_02UITestsLaunchTests.swift
//  DahmaJaber_TheBigProject_02UITests
//
//  Created by dahma alwani on 28/03/1443 AH.
//

import XCTest

class DahmaJaber_TheBigProject_02UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
