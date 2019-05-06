//
//  Course Data Model.swift
//  Clip App
//
//  Created by Joshua Goss on 3/2/19.
//  Copyright © 2019 Joshua Goss. All rights reserved.
//

import Foundation

class Course: Codable{
    var studentList: [Student] = []
    var courseName: String = ""
    var meetingTime: [String]
    var meetingDays: String
    var meetingLocation: String
    var instructors: [String]
    var uniqueCourseID: String
    var tileBackgroundPattern: String
    var tileBackgroundColor: String
    
    init (courseName: String, meetingTime: [String], meetingDays: String, meetingLocation: String, instructors: [String], tileBackgroundPattern: String, tileBackgroundColor: String){
        self.studentList = []
        self.courseName = courseName
        self.meetingTime = meetingTime
        self.meetingDays = meetingDays
        self.meetingLocation = meetingLocation
        self.instructors = instructors
        self.tileBackgroundPattern = tileBackgroundPattern
        self.tileBackgroundColor = tileBackgroundColor
        self.uniqueCourseID = instructors[0]+courseName+Date.init().description
    }
}
