//
//  TutorInfoViewController.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/16/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class TutorInfoViewController: UIViewController {

    @IBOutlet weak var nameInfo: UILabel!
    @IBOutlet weak var majorInfo: UILabel!
    
    @IBOutlet weak var involveInfo: UITextView!
    @IBOutlet weak var tutorImage: UIImageView!
    
    var name:String!
    var major:String!
    var tutorPicture:String!
    var tutorInvolve: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameInfo.text = name
        majorInfo.text = major
        involveInfo.text = tutorInvolve
        
        tutorImage.image = UIImage(named: tutorPicture)

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
