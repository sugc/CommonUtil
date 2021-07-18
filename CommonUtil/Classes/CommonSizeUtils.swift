//
//  DesignedUtils.swift
//  MagicCamera
//
//  Created by sugc on 2017/11/26.
//  Copyright © 2017年 sugc. All rights reserved.
//

import Foundation
import UIKit

public let ScreenSize = UIScreen.main.bounds.size
public let ScreenWidth : CGFloat = UIScreen.main.bounds.size.width
public let ScreenHeight : CGFloat = UIScreen.main.bounds.size.height

public let iPhoneXSafeDistance : CGFloat = ScreenHeight > 800 ? 78 : 0
public let iPhoneXSafeDistanceTop : CGFloat = ScreenHeight > 800 ? 44 : 0
public let iPhoneXSafeDistanceBottom : CGFloat = ScreenHeight > 800 ? 34 : 0
