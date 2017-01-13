//
//  JSONThemeKit.swift
//  JSONThemeKit
//
//  Created by Matt Revell on 12/01/2017.
//  Copyright © 2017 Matt Revell. All rights reserved.
//

import UIKit

public struct JSONTheme {
  let barTintColor: UIColor
  let tintColor: UIColor
  let statusBarStyle: UIStatusBarStyle
}

public extension JSONTheme {
  typealias JSONColourable = (_ item: Any?) -> UIColor?
  init?(json: [String: Any]) {
    
    let colorFunc = JSONTheme.color
    let statusBarFunc = JSONTheme.statusBarStyle
    
    guard let barTintColor = colorFunc(json["barTintColor"]),
      let tintColor = colorFunc(json["tintColor"]),
      let statusBarStyle = statusBarFunc(json["statusBarStyle"])
      else {
        return nil
    }
    
    self.barTintColor = barTintColor
    self.tintColor = tintColor
    self.statusBarStyle = statusBarStyle
    
  }
  
  private static func color(_ item: Any?) -> UIColor? {
    guard let string = item as? String else { return nil }
    return string.toColor()
  }
  
  private static func statusBarStyle(_ item: Any?) -> UIStatusBarStyle? {
    
    guard let string = item as? String else { return nil }
    
    switch string {
    case "light": return .lightContent
    default: return .default
    }
    
  }
}
