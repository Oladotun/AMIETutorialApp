//
//  StudentInfoViewController.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/15/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class StudentInfoViewController: UIViewController {
    
    @IBOutlet weak var StudentInfo: UIImageView!
//    @IBOutlet weak var studentInfoDesc: UITextView!
    
    @IBOutlet weak var studentInfoTextView: UITextView!
    @IBOutlet weak var schoolName: UILabel!
    @IBOutlet weak var studentInfoDesc: UILabel!
    var name:String!
    var imageName: String!
    var schoolNameString: String!
    var studentInfoText: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        studentInfoDesc.text = name
        StudentInfo.image = UIImage(named: imageName)
        schoolName.text = schoolNameString
        studentInfoTextView.text = studentInfoText

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
