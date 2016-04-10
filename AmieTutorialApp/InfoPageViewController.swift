//
//  InfoPageViewController.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/9/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class InfoPageViewController: UIViewController {

    @IBOutlet weak var Infolabel: UILabel!
    
    @IBOutlet weak var menu: UIBarButtonItem!
    @IBOutlet weak var Infotext: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Infolabel.text = "More information on AMIE"
        Infotext.text = "The goal of the program is to increase the mathematics skill proficiency of middle school students in preparation for the Partnership for Assessment of Readiness for College and Careers Examination and prepare high school students for the SAT. Morgan State University's engineering students tutor Monday through Wednesday evenings at Morgan State University's Clarence M. Mitchell Jr. School of Engineering. The eight-week program is offered in the fall and spring. Students may attend all three tutorial sessions but are required to attend two sessions per week. They are tested at the beginning and end of the program to measure their progress."
        Infotext.userInteractionEnabled = false
//        self.view.backgroundColor = UIColor.blueColor()
        
        if self.revealViewController() != nil {
            menu.target = self.revealViewController()
            menu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        
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
