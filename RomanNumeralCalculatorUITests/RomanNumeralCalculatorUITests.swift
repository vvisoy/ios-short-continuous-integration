//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by Vladimir Choi on 8/17/24.
//  Copyright © 2024 buddybuild. All rights reserved.
//

import XCTest

final class RomanNumeralCalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testAddOnePlusOne() {
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedlabel = app/*@START_MENU_TOKEN@*/.staticTexts["calculated_value"]/*[[".staticTexts[\"II\"]",".staticTexts[\"calculated_value\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calculatedlabel.label, "I")
        // tap "+"
        app/*@START_MENU_TOKEN@*/.staticTexts["+"]/*[[".buttons[\"+\"].staticTexts[\"+\"]",".staticTexts[\"+\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calculatedlabel.label, "II")
        
    }
}
