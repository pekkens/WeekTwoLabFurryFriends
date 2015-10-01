//
//  LogInViewController.swift
//  WeekTwoLabFurryFriends
//
//  Created by Prisca Ekkens on 9/26/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: Outlets

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func loginBtnPressed(sender: AnyObject) {
        
        if userName.text == "Prisca" && password.text == "password"{
            performSegueWithIdentifier("loginSegue", sender: nil)
        } else {
            var alert = UIAlertView (title: "Error", message: "Oops!", delegate: nil, cancelButtonTitle: "Try again")
        }
        userName.text = ""
        password.text = ""
    }
    
}