//
//  StringExtensionsTests.swift
//  JSONThemeKit
//
//  Created by Matt Revell on 12/01/2017.
//  Copyright © 2017 Matt Revell. All rights reserved.
//

import XCTest

class StringExtensionsTests: XCTestCase {
  func testWillCreateColor() {
    
    let actual = "#FFFFFF".toColor()
    let expected = UIColor.white
    
    let isPassing = actual.naiveIsEqual(expected)
    
    XCTAssert(isPassing, "\(actual) is not \(expected)")
    
  }
  
  func testWillDefaultToClearExtendedAlpha() {
    
    let actual = "SSSSSSSSSSS".toColor()
    let expected = UIColor.clear
    
    let isPassing = actual.naiveIsEqual(expected)
    
    XCTAssert(isPassing, "\(actual) is not \(expected)")
    
  }
  
  func testWillDefaultToClear() {
    
    let actual = "#FFF".toColor()
    let expected = UIColor.white
    
    let isPassing = actual.naiveIsEqual(expected)
    
    XCTAssert(isPassing, "\(actual) is not \(expected)")
    
  }
}
