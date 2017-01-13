//
//  JSONHelpers.swift
//  JSONThemeKit
//
//  Created by Matt Revell on 12/01/2017.
//  Copyright © 2017 Matt Revell. All rights reserved.
//

import Foundation

public protocol BundleJSONHelpers {
  func getJSONData<T>(filename: String, ofType type: String) throws -> T
}

public enum BundleExtensionsError: Error {
  case invalidPath
  case invalidJSONData
  case invalidType
}

extension Bundle: BundleJSONHelpers {
  public func getJSONData<T>(filename: String, ofType type: String = "") throws -> T {
    guard let path = path(forResource: filename, ofType: type)
      else { throw BundleExtensionsError.invalidPath }
    
    let url = URL(fileURLWithPath: path)
    
    let data = try Data(contentsOf: url)
    
    do {
      let json = try JSONSerialization.jsonObject(with: data, options: [])
      if let result = json as? T {
        return result
      }
    } catch {
      throw BundleExtensionsError.invalidJSONData
    }
    
    fatalError("Failed to process data")
    
  }
}
