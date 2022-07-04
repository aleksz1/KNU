//
//  FirstPairTuesday.swift
//  KNU
//
//  Created by Иван on 20.08.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import CoreData

class FirstPairTuesday: UIViewController {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var captainLabel: UILabel!
    
    @IBOutlet weak var subjectField: UITextField!
    @IBOutlet weak var roomField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var groupField: UITextField!
    @IBOutlet weak var captainField: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "FirstTuesday")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                subjectField.text = data.value(forKey: "subject15") as? String
                roomField.text = data.value(forKey: "room15") as? String
                timeField.text = data.value(forKey: "time15") as? String
                emailField.text = data.value(forKey: "emailGroup15") as? String
                groupField.text = data.value(forKey: "group15") as? String
                captainField.text = data.value(forKey: "captain15") as? String
            }
        } catch {
            print("Failed")
        }
        //        if let  daySchedule =  TeacherTable.shared.weekDays[dayKey] {
        //            if daySchedule.count >= indexOne + 1 {
        //                self.roomField.text = daySchedule[indexOne]?.classroom
        //                self.subjectField.text = daySchedule[indexOne]?.pair
        //            }
        //        }
        
        
        subjectLabel.layer.borderWidth = 1.0
        roomLabel.layer.borderWidth = 1.0
        timeLabel.layer.borderWidth = 1.0
        emailLabel.layer.borderWidth = 1.0
        groupLabel.layer.borderWidth = 1.0
        captainLabel.layer.borderWidth = 1.0
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "FirstTuesday", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue(self.subjectField!.text, forKey: "subject15")
        newUser.setValue(self.roomField!.text, forKey: "room15")
        newUser.setValue(self.timeField!.text, forKey: "time15")
        newUser.setValue(self.emailField!.text, forKey: "emailGroup15")
        newUser.setValue(self.groupField!.text, forKey: "group15")
        newUser.setValue(self.captainField!.text, forKey: "captain15")
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
        
        //        if let  daySchedule =  TeacherTable.shared.weekDays[dayKey] {
        //            if daySchedule.count >= indexOne + 1 {
        //                self.roomField.text = daySchedule[indexOne]?.classroom
        //                self.subjectField.text = daySchedule[indexOne]?.pair
        //
        //            }
        //            let pairTable = DayTable(classroom:  self.roomField.text!, pair: self.subjectField.text!)
        //            TeacherTable.shared.weekDays[dayKey]?.append(pairTable)
        //            }
        //           }
    }
}

