//
//  Extensions.swift
//  Login
//
//  Created by Mac Bellingrath on 10/15/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit


extension UIImage {
    enum AssetIdentifier: String {
        case WhiteLock, BlueLock, SmallPerson, BigPerson
    }
    
    convenience init!(assetIdentifier: AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
    
    
    
}

extension UIColor {
    class func loginBlueColor() -> UIColor {
        return UIColor(red:0, green:0.5, blue:1, alpha:1)
    }
}