//
//  TutorsListTableViewController.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/16/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class TutorsListTableViewController: UITableViewController {
    
    let tutorNames = ["Aaron Edmond","Edmund Ahoyi","Angel Boodoo","Paige Harvey","Imani Bilgen"]
    let tutorPictures = ["Aaron","Edmund","Angel","Paige",""]
    let tutorMajor = ["Electrical Engineering", "Electrical Engineering","Electrical Engineering","Electrical Engineering","Civil Engineering"]
    let tutorInvolve = ["I enjoy tutoring you all. (mozzy especially!)","I love helping out kids","","Seeing young teenage improve in their math and sciences is a passion of mine","My personal life goal is to be a source of assitance to the youth, AMIE provides that!"]
    var name: String!
    var major: String!
    var imageName: String!
    var tutorInvolveStrng: String!

    @IBOutlet weak var menu: UIBarButtonItem!
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
        return tutorNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TutorTableViewCell
        
        cell.studentName.text = tutorNames[indexPath.row]

        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        name = tutorNames[indexPath.row]
        major = tutorMajor[indexPath.row]
        imageName = tutorPictures[indexPath.row]
        tutorInvolveStrng = tutorInvolve[indexPath.row]
        performSegueWithIdentifier("tutorPage", sender: self)
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
        
        
        let otherPage = segue.destinationViewController as! TutorInfoViewController
        
        otherPage.name = name
        otherPage.major = major
        otherPage.tutorPicture = imageName
        otherPage.tutorInvolve = tutorInvolveStrng
        
        
    }
    

}
