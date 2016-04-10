//
//  HomePageViewController.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/15/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    
    
    @IBOutlet weak var menu: UIBarButtonItem!
     @IBOutlet weak var amieLogo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        amieLogo.image = UIImage(named: "AMIELogo")
        
        if self.revealViewController() != nil {
            menu.target = self.revealViewController()
            menu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
//        self.view.backgroundColor = UIColor.blueColor()

        // Do any additional setup after loading the view.
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

}
