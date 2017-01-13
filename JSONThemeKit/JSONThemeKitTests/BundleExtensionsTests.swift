//
//  BundleExtensionsTests.swift
//  JSONThemeKit
//
//  Created by Matt Revell on 12/01/2017.
//  Copyright © 2017 Matt Revell. All rights reserved.
//

import XCTest
@testable import JSONThemeKit

class BundleExtensionsTests: XCTestCase {
  func testCanPullDataFromBundle() {
    let testBundle = Bundle(for: type(of: self))
    
    do {
      
      let result: [String: String] = try testBundle.getJSONData(filename: "Mock.json")
      let actual = result["name"]
      let expected = "Mocky McMockface"
      XCTAssert(actual == expected, "\(actual) is not \(expected)")
      
    } catch {
      XCTFail("Failed to parse data")
    }
  }
  
  func testWillThrowInvalidPathError() {
    let testBundle = Bundle(for: type(of: self))
    do {
      let _: String = try testBundle.getJSONData(filename: "MockeX.json")
    } catch BundleExtensionsError.invalidPath {
      XCTAssert(true)
    } catch {
      XCTFail("Failed to parse data")
    }
    
  }
  
  func testWillThrowInvalidDataError() {
    let testBundle = Bundle(for: type(of: self))
    do {
      let _: Any = try testBundle.getJSONData(filename: "FakeMock")
    } catch BundleExtensionsError.invalidJSONData {
      XCTAssert(true)
    } catch {
      XCTFail("Failed to parse data")
    }
    
  }
}
