//
//  ViewController.swift
//  WeekTwoLabFurryFriends
//
//  Created by Prisca Ekkens on 9/25/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {
    
    //MARK: Global Variables
    
    var scale = CGFloat (1.0)
    var rotate = CGFloat (0)
    var resetInitialCenter: CGPoint!

    
    //MARK: Outlets

    @IBOutlet weak var messageRabbit: UITextField!
    @IBOutlet weak var rabbitImageView: UIImageView!
    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var thinkingIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetInitialCenter = rabbitImageView.center
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Funtions
    
    func updateTransform() {
        
        let rotateTransform = CGAffineTransformMakeRotation(rotate)
        let scaleTransform = CGAffineTransformMakeScale(scale, scale)
        let transform = CGAffineTransformConcat(rotateTransform, scaleTransform)
        
        UIView.animateWithDuration(0.3) { () -> Void in self.rabbitImageView.transform = transform
            
        }
    }
    
    //MARK: IBActions
    
    @IBAction func btnMovesRabbitUp(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3) { () -> Void in self.rabbitImageView.center.y = self.rabbitImageView.center.y - 25
        }
    }
    
    @IBAction func btnMovesRabbitDown(sender: AnyObject) {
        
         UIView.animateWithDuration(0.3) { () -> Void in self.rabbitImageView.center.y = self.rabbitImageView.center.y + 25
        }
    }
    
    @IBAction func btnMovesRabbitLeft(sender: AnyObject) {
       
         UIView.animateWithDuration(0.3) { () -> Void in self.rabbitImageView.center.x = self.rabbitImageView.center.x - 25
        }
    }
    
    @IBAction func btnMovesRabbitRight(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3) { () -> Void in self.rabbitImageView.center.x = self.rabbitImageView.center.x + 10
        }
    }
    
    @IBAction func btnShrinksRabbit(sender: AnyObject) {
        
        scale = scale - 0.25
        
        self.updateTransform()
        
        }

    @IBAction func btnGrowsRabbit(sender: AnyObject) {
        
        scale = scale + 0.25
        
        self.updateTransform()
            
        }
    
    @IBAction func btnRotatesRabbitLeft(sender: AnyObject) {
        
        //use M_PI/180 formula to rotate objects
        rotate = rotate - CGFloat(90 * M_PI / 180)
        self.updateTransform()
        
        }
    
    @IBAction func btnRotatesRabbitRight(sender: AnyObject) {
        
        rotate = rotate + CGFloat(90 * M_PI / 180)
        self.updateTransform()
        
        }
    
    @IBAction func resetBtnPressed(sender: AnyObject) {
        
        UIView.animateWithDuration(1.0) { () -> Void in
        self.rabbitImageView.center = self.resetInitialCenter
        self.rabbitImageView.transform = CGAffineTransformIdentity
            
        }
        
    }
    
    @IBAction func sendBtnPressed(sender: AnyObject) {
        if messageRabbit.text == "Hello"{
                messageRabbit.text = ""
                responseLabel.text = ""
                self.thinkingIndicator.startAnimating()
                delay(1.5, closure: { () -> () in
                self.responseLabel.text = "Hey there!"
                    self.thinkingIndicator.stopAnimating()
                    
            })
            
        } else if messageRabbit.text == "What is your name?" {
            responseLabel.text = "Bunny"
                    messageRabbit.text = ""
                    responseLabel.text = ""
                    self.thinkingIndicator.startAnimating()
                    delay(1.5, closure: { () -> () in
                        self.responseLabel.text = "Bunny!"
                        self.thinkingIndicator.stopAnimating()
                        
                    })
            
        } else {
            responseLabel.text = "I don't speak human very well"
        }
    }
    
    @IBAction func logoutBtnPressed(sender: AnyObject) {
        
        let actionSheet =
        UIActionSheet (title: "Are you sure?", delegate: self, cancelButtonTitle: "Nah, just joking.", destructiveButtonTitle: "Yes, Bye-Bye!")
        
        actionSheet.showInView(view)
        
        
        
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 0 {
            dismissViewControllerAnimated(true, completion: nil)
            
        }
    }

}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
