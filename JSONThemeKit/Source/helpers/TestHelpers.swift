//
//  TestHelpers.swift
//  JSONThemeKit
//
//  Created by Matt Revell on 12/01/2017.
//  Copyright © 2017 Matt Revell. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
  
  // Assumption we are using the same colorspace
  public func naiveIsEqual(_ color2: UIColor) -> Bool {
    let (red1, green1, blue1, alpha1) = getValues()
    let (red2, green2, blue2, alpha2) = color2.getValues()
    return red1 == red2 && green1 == green2 && blue1 == blue2 && alpha1 == alpha2
  }
  
  private func getValues() -> (CGFloat, CGFloat, CGFloat, CGFloat) {
    
    var red1: CGFloat = 0
    var green1: CGFloat = 0
    var blue1: CGFloat = 0
    var alpha1: CGFloat = 0
    
    getRed(&red1, green: &green1, blue: &blue1, alpha: &alpha1)
    
    return (red1, green1, blue1, alpha1)
  }
}
