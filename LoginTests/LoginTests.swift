//
//  LoginTests.swift
//  LoginTests
//
//  Created by Mac Bellingrath on 10/15/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import XCTest
@testable import Login
@testable import Parse


class LoginTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testStoryboard () {
        let storyboard = UIStoryboard(name: "Logn", bundle: nil)
        XCTAssertNotNil(storyboard, "storyboard error"  )
    }
    
    
    func testUserNotNil() {
        let user = PFUser.currentUser()
        XCTAssertNotNil(user, "user is nil" )
        
    
    }
    
    func testRegister(){
        let testRegisterVC = LoginViewController()
        testRegisterVC.registerUser()
        XCTAssertNotNil(PFUser.currentUser(), "Registration failed, current user is nil")
    }
    
    func testLogin() {
        
        let testLoginVC = LoginViewController()
        testLoginVC.logIn()
        XCTAssertNotNil(PFUser.currentUser(), "Log-in failed, current user is nil")
        
        
    }
    
}
