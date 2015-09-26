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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


    
    @IBAction func loginBtnPressed(sender: AnyObject) {
        
        performSegueWithIdentifier("loginSegue", sender: nil)
    }
    
    
}
