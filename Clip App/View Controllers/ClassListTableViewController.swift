//
//  ClassListTableViewController.swift
//  Clip App
//
//  Created by Joshua Goss on 3/6/19.
//  Copyright © 2019 Joshua Goss. All rights reserved.
//

import UIKit

class ClassListTableViewController: UITableViewController {

    var classList: [Course] = [
        Course(courseName: "Geometry", meetingTime: ["7:30", "8:50"], meetingDays: "A", meetingLocation: "B211", instructors: ["Dr. Goss"], tileBackgroundPattern: " ", tileBackgroundColor: " "),
        Course(courseName: "Homeroom", meetingTime: ["8:55","9:15"], meetingDays: "AB", meetingLocation: "B211", instructors: ["Dr. Goss"], tileBackgroundPattern: " ", tileBackgroundColor: " "),
        Course(courseName: "Algebra II", meetingTime: ["9:20","10:40"], meetingDays: "B", meetingLocation: "B211", instructors: ["Dr. Goss"], tileBackgroundPattern: " ", tileBackgroundColor: " "),
        Course(courseName: "Algebra II", meetingTime: ["10:45","11:25","11:55","12:35"], meetingDays: "A", meetingLocation: "B211", instructors: ["Dr. Goss"], tileBackgroundPattern: " ", tileBackgroundColor: " "),
        Course(courseName: "Algebra II", meetingTime: ["10:45","11:25","11:55","12:35"], meetingDays: "B", meetingLocation: "B211", instructors: ["Dr. Goss"], tileBackgroundPattern: " ", tileBackgroundColor: " "),
        Course(courseName: "Algebra II", meetingTime: ["12:40","14:00"], meetingDays: "A", meetingLocation: "B211", instructors: ["Dr. Goss"], tileBackgroundPattern: " ", tileBackgroundColor: " ")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return classList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Course", for: indexPath)

        let currentCourse = classList[indexPath.row]
        
        let meetingTimes = (currentCourse.meetingTime.count/2 == 1) ? " \(currentCourse.meetingTime[0]) - \(currentCourse.meetingTime[1])" : "s \(currentCourse.meetingTime[0]) - \(currentCourse.meetingTime[1]) & \(currentCourse.meetingTime[2]) - \(currentCourse.meetingTime[3])"
        
        cell.textLabel?.text = currentCourse.courseName
        cell.detailTextLabel?.text = "Meeting day: \(currentCourse.meetingDays) - Meeting time\(meetingTimes)"

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("Leaving class list table")
    }
    

}
