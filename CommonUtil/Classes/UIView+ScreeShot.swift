//
//  UIView+ScreeShot.swift
//  CommonUtil
//
//  Created by sugc on 2021/6/6.
//

import Foundation

extension UIView {
    
    public func renderImage(finalSize:CGSize) -> UIImage? {
        let size = self.layer.frame.size
        UIGraphicsBeginImageContext(finalSize)
        let contexts = UIGraphicsGetCurrentContext()!
        contexts.scaleBy(x: finalSize.width / size.width, y: finalSize.height / size.height)
        self.layer.render(in: contexts)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image;
    }
    
    public func screeShot() -> UIImage? {
        return self.renderImage(finalSize: self.bounds.size)
    }
    
    
}
