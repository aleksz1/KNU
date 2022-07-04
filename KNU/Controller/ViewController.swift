//
//  ViewController.swift
//  KNU
//
//  Created by Иван on 28.02.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBOutlet weak var textStart: UITextView!
    @IBOutlet weak var imageBox: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startApp()
        checkSecondEnter()
    }
    
    
    func startApp(){
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    func checkSecondEnter(){
        let defaults = UserDefaults.standard
        if let isSecondEnter = defaults.object(forKey: "saveData") as? Bool{
            if isSecondEnter {
                performSegue(withIdentifier: "SecondEnter", sender: Any?.self)
            }
        }
    }
    
    func getObjects() -> Group {
        let defaultObject = Group(name : "name", UpMonday: "UpMnday", UpTuesday: "UpTuesday", UpWednesday: "UpWednesday", UpThursday: "UpThursday", UpFriday: "UpFriday", downMonday: "downMnday", downTuesday: "downTuesday", downWednesday: "downWednesday", downThursday: "downThursday", downFriday: "downFriday")
        if let objects = UserDefaults.standard.value(forKey: "group") as? Data {
            let decoder = JSONDecoder()
            if let objectsDecoded = try? decoder.decode(Group.self, from: objects) as Group {
                return objectsDecoded
            } else {
                return defaultObject
            }
        } else {
            return defaultObject
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SecondEnter" {
            if let destinationVC = segue.destination as? WeeksViewController {
                destinationVC.group = self.getObjects()
            }
        }
    }
}
