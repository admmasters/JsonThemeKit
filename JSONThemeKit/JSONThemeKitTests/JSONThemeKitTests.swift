//
//  JSONThemeKitTests.swift
//  JSONThemeKitTests
//
//  Created by Matt Revell on 12/01/2017.
//  Copyright © 2017 Matt Revell. All rights reserved.
//

import XCTest
@testable import JSONThemeKit

class JSONThemeKitTests: XCTestCase {
  lazy var testBundle: Bundle = Bundle(for: type(of: self))
  func testThatTintColorCanBeSet() {
    
    let jsonData: [String: String] = try! testBundle.getJSONData(filename: "MockColorSettings.json")
    let theme = JSONTheme(json: jsonData)
    let actual = theme!.tintColor
    
    XCTAssert(actual.naiveIsEqual(.red), "\(actual) is not red")
    
  }
  
  func testThatBarTintColorCanBeSet() {
    
    let jsonData: [String: String] = try! testBundle.getJSONData(filename: "MockColorSettings.json")
    let theme = JSONTheme(json: jsonData)
    let actual = theme!.barTintColor
    
    XCTAssert(actual.naiveIsEqual(.green), "\(actual) is not green")
    
  }
  
}
