//
//  ClipEventEditBaseViewController.swift
//  Clip App
//
//  Created by Joshua Goss on 3/6/19.
//  Copyright © 2019 Joshua Goss. All rights reserved.
//

import UIKit

class ClipEventEditBaseViewController: UIViewController {
    
    @IBOutlet weak var clipEventAddOrEditLabel: UILabel!
    @IBOutlet weak var descriptionOfClipEvent: UITextField!
    @IBOutlet weak var pointValueOfClipEvent: UITextField!
    @IBOutlet weak var clipDirectionIsUp: UISwitch!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    @IBAction func logClipEvent(_ sender: Any) {
        guard let description = descriptionOfClipEvent.text, description != "" else {
            errorMessage(message: "The description can not be left blank")
            return
        }
        guard let points = Int(pointValueOfClipEvent.text!), points > 0 else {
            errorMessage(message: "Point value should be a positive whole number")
            return
        }
        let direction: ClipDirection = clipDirectionIsUp.isOn ? .up : .down
        let newEvent = ClipEvent(direction: direction, magnitude: points, description: description)
        
        var masterArray = ClipEvent.downloadMasterArray()
        masterArray.append(newEvent)
        ClipEvent.saveArray(arr: masterArray)
        descriptionOfClipEvent.text = ""
        pointValueOfClipEvent.text = ""
        errorMessageLabel.text = ""
        //refreshTables()
    }
    
    func errorMessage(message: String){
        errorMessageLabel.text = message
    }
    
    func refreshTables(){
        performSegue(withIdentifier: "clipUpTableDefinition", sender: nil)
        performSegue(withIdentifier: "clipDownTableDefinition", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //updateChildVCs()
        //refreshTables()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
   */

}
