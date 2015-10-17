//
//  LoginViewController.swift
//  Login
//
//  Created by Mac Bellingrath on 10/15/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        logIn()
        }
    
    @IBAction func registerButtonPressed(sender: UIButton) {
        registerUser()
            }

    @IBOutlet weak var userNameField: UITextField! {
        willSet {
         userNameField.text = "john"    
        }
    }
    
    
    
    
    //LOGGIN IN
    
    func logIn() {
        if let userName = userNameField.text {
            PFUser.logInWithUsernameInBackground("mac", password:"password") {
                (user: PFUser?, error: NSError?) -> Void in
                if user != nil {
                    // Do stuff after successful login.
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    
                    //login view controller
                    
                    if let loginVC = storyboard.instantiateInitialViewController() {
                        
                        self.presentViewController(loginVC, animated: true, completion: nil  )

                    
                } else {
                    // The login failed. Check error to see why.
                }
                }
            
            
            }

        }
    }
   
    
    
    //REGISTRATION
    func registerUser() {
        let userName = userNameField.text
        let user = PFUser()
        user.username = userName
        user.password = "myPassword"
        user.email = "email@example.com"
        // other fields can be set just like with PFObject
        user["phone"] = "415-392-0202"
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo["error"] as? NSString
                // Show the errorString somewhere and let the user try again.
                print(errorString)
            } else {
                // Hooray! Let them use the app now.
                
                self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
                
            }
        }

    }
    
}