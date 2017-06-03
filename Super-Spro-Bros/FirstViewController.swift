//
//  FirstViewController.swift
//  Super-Spro-Bros
//
//  Created by Michael Solimini on 4/6/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var ReezyPicture: UIImageView!
    @IBOutlet weak var RickyPicture: UIImageView!
    @IBOutlet weak var ReezyInstagramBtn: UIButton!
    @IBOutlet weak var ReezyTwtBtn: UIButton!
    @IBOutlet weak var RickyInstagramBtn: UIButton!
    @IBOutlet weak var SproInstagramBtn: UIButton!
    @IBOutlet weak var AbtBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ReezyPicture.layer.cornerRadius = 10.0
        RickyPicture.layer.cornerRadius = 10.0
    }

    @IBAction func ReezyInsta(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "instagram://user?username=ReezyResells")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "instagram://user?username=ReezyResells")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://www.instagram.com/ReezyResells/")! as URL)
        }
    }
  
    @IBAction func ReezyTwt(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "twitter://user?screen_name=ReezyResells")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "twitter://user?screen_name=ReezyResells")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://twitter.com/ReezyResells")! as URL)
        }
    }

    @IBAction func RickyInsta(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "instagram://user?username=RickyAnalog")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "instagram://user?username=RickyAnalog")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://www.instagram.com/RickyAnalog/")! as URL)
        }
    }
    
    @IBAction func SproBrosInsta(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "instagram://user?username=supersprobros")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "instagram://user?username=supersprobros")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://www.instagram.com/supersprobros/")! as URL)
        }
    }
   
}

