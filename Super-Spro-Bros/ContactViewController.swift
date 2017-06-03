//
//  ContactViewController.swift
//  Super-Spro-Bros
//
//  Created by Michael Solimini on 4/6/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {

    
    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var MessageField: UITextField!
    @IBOutlet weak var SendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SendBtn.layer.cornerRadius = 10.0
        
    }
    
    @IBAction func SendMessage(_ sender: Any) {
        let toRecipients = ["mjsolimini@comcast.net"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipients)
        mc.setSubject(NameField.text!)
        mc.setMessageBody("Subject: \(NameField.text!) \n\nEmail: \(EmailField.text!) \n\nMessage: \(MessageField.text!)", isHTML: false)
        self.present(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Cancelled")
        case MFMailComposeResult.failed.rawValue:
            print("Failed")
        case MFMailComposeResult.saved.rawValue:
            print("Saved")
        case MFMailComposeResult.sent.rawValue:
            print("Sent")
        default:
            break
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }

}
