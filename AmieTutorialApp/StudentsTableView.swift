//
//  StudentsTableView.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/15/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class StudentsTableView: UITableViewController {
    
    @IBOutlet weak var menu: UIBarButtonItem!
    let studentName = ["Lindsay Jainarine", "Liam Jainarine", "Mozzy Aroworowon","Jessica Jainarine","Andrew Cuthrell","Christian Olabisi","Thakib Aroworowon","Jonathan Thomas"]
    
    
    let imageStudentName = ["FullSizeRender_11","FullSizeRender_2","FullSizeRender_4","FullSizeRender_5","FullSizeRender_3","FullSizeRender","FullSizeRender_1","FullSizeRender_12"]
    
    let studentSchoolName = ["Parkville High School","Parkville High School","Towson High School","Parkville High School","Arch Bishop Curley","Loch Raven Technical Academy","Loch Raven Technical Academy"," WoodHome Middle School"]
    let amieLike = ["Amie helps me with my weakest subjects like Math and Engineering.","Amie helps me with getting better percentages in my homework category, and helps me study with upcoming tests.","Amie Helps me with homework and stops me from procrastinating.","Amie helps me with improving my grades and Amie also teaches me new strategies.","AMIE introduces me to new things like coding and it also helps me improve my grades in subjects im weak at.","Amie helps me with homework, they also help me improve my grades especially in math.","Amie helps me with homework and finding ways to do it accurate and faster. By doing that my grades has greatly improved .","Amie helps me with homework and improving my skills many subjects such as math and sciences."]
    var name: String!
    var imageName: String!
    var schoolName: String!
    var reasonLike: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menu.target = self.revealViewController()
            menu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return studentName.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! StudentsTableViewCell
        
        cell.studentLabel.text = studentName[indexPath.row]

//         Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        name = studentName[indexPath.row]
        print(name)
        imageName = imageStudentName[indexPath.row]
        schoolName = studentSchoolName[indexPath.row]
        reasonLike = amieLike[indexPath.row]
        
        // Update the view in the next page
//        let destinationVC = StudentInfoViewController()
//
//        let studentTest = UITextView()
//        studentTest.text = name
//        destinationVC.name = name
        
        performSegueWithIdentifier("test", sender: self)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let otherPage = segue.destinationViewController as! StudentInfoViewController
        
        if (segue.identifier == "test") {
            
//            let studentTest = UITextView()
//            studentTest.text = name
            
            print("\(name) in segue")
            otherPage.name = name
            otherPage.imageName = imageName
            otherPage.schoolNameString = schoolName
            otherPage.studentInfoText = reasonLike
        }
        
//        otherPage.studentInfoDesc.text =
    }


}
