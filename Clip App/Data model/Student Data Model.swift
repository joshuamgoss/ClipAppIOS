//
//  Student Data Model.swift
//  Clip App
//
//  Created by Joshua Goss on 3/2/19.
//  Copyright © 2019 Joshua Goss. All rights reserved.
//

import Foundation

class Student: Codable{
    var name: Name
    var emailAddress: String
    var guardian: [Guardian]
    var studentLog: [LogEntry]
    var uniqueID: String
    var enrolledClasses: [Course]
    var eligibleForCallout: Bool
    var weeklyClipScore: Int
    var studentID: Int
    
    init (name: Name, emailAddress: String, enrolledClasses: [Course], eligibleForCallout: Bool, studentID: Int, guardian: [Guardian]){
        self.name = name
        self.emailAddress = emailAddress
        self.enrolledClasses = enrolledClasses
        self.eligibleForCallout = eligibleForCallout
        self.studentID = studentID
        self.uniqueID = name.last+String(studentID)
        self.guardian = guardian
        self.studentLog = []
        self.weeklyClipScore = 0
    }
}
