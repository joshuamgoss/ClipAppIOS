//
//  Structure definitions.swift
//  Clip App
//
//  Created by Joshua Goss on 3/2/19.
//  Copyright © 2019 Joshua Goss. All rights reserved.
//

import Foundation

enum ClipDirection: Int, Codable{
    case up
    case down
}

struct ClipEvent: Codable{
    var direction: ClipDirection
    var magnitude: Int
    var description: String
    init(direction: ClipDirection, magnitude: Int, description: String) {
        self.direction = direction
        self.magnitude = magnitude
        self.description = description
    }
    
    //Mark: Static Methods
    static func saveArray(arr: [ClipEvent]){
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("ClipEvents_Master_Array").appendingPathExtension("ClipApp")
        
        let propertyListEncoder = PropertyListEncoder()
        let encodedArray = try? propertyListEncoder.encode(arr)
        try? encodedArray?.write(to: archiveURL)
    }
    static func downloadMasterArray() -> [ClipEvent] {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("ClipEvents_Master_Array").appendingPathExtension("ClipApp")
        
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedArray = try? Data(contentsOf: archiveURL), let decodedArray = try? propertyListDecoder.decode(Array<ClipEvent>.self, from: retrievedArray){
            return decodedArray
        }
        return []
    }
}

struct Name: Codable{
    var first: String
    var middle: String
    var last: String
    var preferred: String
}

struct Guardian: Codable{
    var name: Name
    var eMail: String
    var phone: String
    var notes: String
}

struct LogEntry: Codable{
    var dateTime: Date
    var event: ClipEvent
}

struct PassEvent: Codable{
    var timeOut: Date
    var timeIn: Date
    var destination: String
    var studentID: Student
    var courseID: Course
}
