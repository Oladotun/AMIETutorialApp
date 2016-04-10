//
//  ViewController.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/9/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let url = "http://amietutorialprogram.wix.com/amie#!contact-us/c1nhg"
    
    
    @IBOutlet weak var menu: UIBarButtonItem!
    @IBOutlet weak var amiephoto: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        amiephoto.loadRequest(request)
        
        if self.revealViewController() != nil {
            menu.target = self.revealViewController()
            menu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

