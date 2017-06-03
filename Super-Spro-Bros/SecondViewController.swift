//
//  SecondViewController.swift
//  Super-Spro-Bros
//
//  Created by Michael Solimini on 4/6/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Container: UIView!
    var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WebView = WKWebView()
        Container.addSubview(WebView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let frame = CGRect(x: 0, y: 0, width: Container.bounds.width, height: Container.bounds.height)
        WebView.frame = frame
        loadRequest(urlStr: "https://www.youtube.com/channel/UCQzO4ffTqCD68r623LPKtpQ")
    }
    
    func loadRequest(urlStr: String!) {
        let url = URL(string: urlStr)!
        let request = URLRequest(url: url)
        WebView.load(request)
    }


}

