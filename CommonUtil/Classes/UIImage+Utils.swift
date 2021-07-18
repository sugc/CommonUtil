//
//  UIImage+Utils.swift
//  CommonUtil
//
//  Created by sugc on 2021/6/6.
//

import Foundation
import UIKit
import CoreGraphics


extension UIImage {
    
    public func imageInFrame(frame:CGRect) -> UIImage{
        let imgRef = self.cgImage!.cropping(to:frame)
        return UIImage.init(cgImage: imgRef!)
    }
    
    
    public func flipImage() -> UIImage{
        
        let size = self.size
        UIGraphicsBeginImageContext(size)
        let contexts = UIGraphicsGetCurrentContext()!
        contexts.translateBy(x: 0, y: size.height)
        contexts.scaleBy(x: 1, y: -1)
        self.draw(at: CGPoint.zero)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    
    public func topImage() -> UIImage! {
        
        return self.imageInFrame(frame: CGRect.init(x: 0, y: 0, width: self.size.width, height: self.size.height * 0.5))
    }
    
    public func bottomImage() -> UIImage! {
        return self.imageInFrame(frame: CGRect.init(x: 0, y: self.size.height * 0.5, width: self.size.width, height: self.size.height * 0.5))
    }
    
}
