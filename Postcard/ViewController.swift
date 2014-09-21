//
//  ViewController.swift
//  Postcard
//
//  Created by Jeff Racaniello on 9/20/14.
//  Copyright (c) 2014 JeffRac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        //messageLabel.text = "Jeff Rac"
        
        // adding a comment here to test commits
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }


}

