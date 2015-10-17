//
//  ViewController.swift
//  Login
//
//  Created by Mac Bellingrath on 10/15/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    
    @IBOutlet weak var lockedStatusLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //add logout button
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "logout", style: UIBarButtonItemStyle.Plain, target: self, action: "logOut")
        
       
        
        if PFUser.currentUser() != nil {
            //logged in
            
            //configure view
            view.backgroundColor = UIColor.whiteColor()
            imageView.image = UIImage(assetIdentifier: .BlueLock)
            lockedStatusLabel.text = "U N L O C K E D"
            lockedStatusLabel.textColor = UIColor.loginBlueColor()
            
        } else {
            //not logged in
            //configure view
            view.backgroundColor = UIColor(red:0, green:0.5, blue:1, alpha:1)
            imageView.image = UIImage(assetIdentifier: .WhiteLock)
            lockedStatusLabel.text = "L O C K E D"
            lockedStatusLabel.textColor = UIColor.whiteColor()
            
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            
            //login view controller
            
            if let loginVC = storyboard.instantiateInitialViewController() {
                presentViewController(loginVC, animated: true, completion: nil  )
            }
            
        }
        
        
    }
    
    
    func logOut() {
        logOut()
    }
}




