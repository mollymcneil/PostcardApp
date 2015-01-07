//
//  ViewController.swift
//  PostCard
//
//  Created by Molly McNeil on 11/18/14.
//  Copyright (c) 2014 ElephantFig Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterAddressTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // adding comment to test commits
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.redColor()
        
        addressLabel.hidden = false
        addressLabel.text = enterAddressTextField.text
        addressLabel.textColor = UIColor.grayColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        //resignFirstResponder gets rid of keyboard
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterAddressTextField.text = ""
        enterAddressTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent Away!", forState: UIControlState.Normal)
        
    }

}

