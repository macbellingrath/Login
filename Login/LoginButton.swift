//
//  LoginButton.swift
//  Login
//
//  Created by Mac Bellingrath on 10/15/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit
import Parse

@IBDesignable
class LoginButton: UIButton {
    
    var loggedIn: Bool{
        get{
            return PFUser.currentUser() != nil
        }
    }
    @IBInspectable var backGroundColor: UIColor = UIColor.whiteColor()
    @IBInspectable var cornerRadius: CGFloat = 7.0
    @IBInspectable var status: Status = .LoggedOut {
        didSet {
            
        }
    }
    
    
        
         
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        //set fill color
        
        backgroundColor?.set()
        
        //fill path
        
        CGContextFillRect(context, rect)
        
        
        
        //set button corner radius
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
        //set button title
        switch status{
        case .LoggedIn:
            setTitle("UNLOCKED", forState: .Normal)
            
        case .LoggedOut:
            setTitle("LOCKED", forState: .Normal)
        }
        
        //Set button title color
        loggedIn ? setTitleColor(UIColor.loginBlueColor(), forState: .Normal ) : setTitleColor(UIColor.whiteColor(), forState: .Normal )

  
        
    }
    

}


extension LoginButton {
    enum Status {
        case LoggedIn, LoggedOut
    }

}