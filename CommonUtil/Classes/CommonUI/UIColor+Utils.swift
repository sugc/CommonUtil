//
//  UIColor+Utils.swift
//  CommonUtil
//
//  Created by sugc on 2021/7/10.
//

import Foundation
import UIKit

public extension UIColor {
    
    static func colorFromHexString(hexString:String!) ->UIColor {
        
        if !hexString.hasPrefix("#") && !hexString.hasPrefix("0x") {
            assert(false, "not a leagal hex string")
        }
        
        var newHexString = hexString.replacingOccurrences(of: "#", with: "")
        newHexString = newHexString.replacingOccurrences(of: "0x", with: "")
        
        if newHexString.count != 6 && newHexString.count != 8 {
            assert(false, "not a leagal hex string")
        }
    
        
        let starIndex = newHexString.startIndex
        let index1 = newHexString.index(starIndex, offsetBy: 2)
        let index2 = newHexString.index(starIndex, offsetBy: 4)
        let index3 = newHexString.index(starIndex, offsetBy: 5)
        
        let red = UInt(newHexString[starIndex..<index1], radix: 16)
        let green = UInt(newHexString[index1..<index2], radix: 16)
        let blue = UInt(newHexString[index2...index3], radix: 16)
        
        var alpha : UInt = 255
        
        if newHexString.count == 0 {
            let index4 = newHexString.index(starIndex, offsetBy: 6)
            let index5 = newHexString.endIndex
            alpha = UInt(newHexString[index4...index5], radix: 16) ?? 255
        }
        
       
        if red == nil || green == nil || blue == nil  {
            assert(false, "not a leagal hex string")
        }
        
        return UIColor(displayP3Red: CGFloat(red!) / 255.0, green: CGFloat(green!) / 255.0, blue: CGFloat(blue!) / 255.0, alpha: CGFloat(alpha) / 255.0)
    }
}
