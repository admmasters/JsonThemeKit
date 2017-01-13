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
  /*
  func testThatWeCanSetTintColor() {
    
    guard let jsonData = getNormalMockColorSettings()
      else { return XCTFail("Can't read JSON") }
    
    guard let theme = JSONTheme(json: jsonData)
      else { return XCTFail("Can't create Color Object") }
    
    let expected = "#FF0000".toColor()
    let actual = theme.tintColor
    
    assert(actual.naiveIsEqual(expected), "\(actual) is not equal to \(expected))")
    
  }
  
  func testThatWeCanSetBarTintColor() {
    
    guard let jsonData = getNormalMockColorSettings()
      else { return XCTFail("Can't read JSON") }
    
    guard let theme = JSONTheme(json: jsonData)
      else { return XCTFail("Can't create Color Object") }
    
    let expected = "#00FF00".toColor()
    let actual = theme.barTintColor
    
    assert(actual.naiveIsEqual(expected), "\(actual) is not equal to \(expected))")
    
  }
  
  func testThatWeCanSetStatusBarStyle() {
    
    guard let jsonData = getNormalMockColorSettings()
      else { return XCTFail("Can't read JSON") }
    
    guard let theme = JSONTheme(json: jsonData)
      else { return XCTFail("Can't create Color Object") }
    
    let expected: UIStatusBarStyle = .lightContent
    let actual: UIStatusBarStyle = theme.statusBarStyle
    
    assert(actual == expected, "\(actual) is not equal to \(expected))")
    
  }
  
  private func getNormalMockColorSettings() -> [String: Any] {
    let testBundle = Bundle(for: type(of: self))
    do {
      let result: [String: Any] = try testBundle.getJSONData(filename: "MockColorSettings.json")
      return result
    } catch {
      return nil
    }
  }*/
}
