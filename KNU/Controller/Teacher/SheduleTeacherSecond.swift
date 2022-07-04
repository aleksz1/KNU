//
//  SheduleTeacherSecond.swift
//  KNU
//
//  Created by Иван on 23.07.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import CoreData
import GoogleMobileAds

class SheduleTeacherSecond: UIViewController,UITextFieldDelegate,GADBannerViewDelegate {

    @IBOutlet weak var bannerView: GADBannerView!
    
    var dayKey = String()
    
    @IBOutlet weak var scroll: UIScrollView!
    
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
        let request = GADRequest()
        bannerView.adUnitID = "ca-app-pub-7516535375184526/7821748887"
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
        
        subjectField.returnKeyType = .done
        roomField.returnKeyType = .done
        timeField.returnKeyType = .done
        emailField.returnKeyType = .done
        groupField.returnKeyType = .done
        captainField.returnKeyType = .done
        self.subjectField.delegate = self
        self.roomField.delegate = self
        self.timeField.delegate = self
        self.emailField.delegate = self
        self.groupField.delegate = self
        self.captainField.delegate = self
        
        if dayKey == "UpMonday"{
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpMondaysecond")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                subjectField.text = data.value(forKey: "subject12") as? String
                roomField.text = data.value(forKey: "room12") as? String
                timeField.text = data.value(forKey: "time12") as? String
                emailField.text = data.value(forKey: "emailGroup12") as? String
                groupField.text = data.value(forKey: "group12") as? String
                captainField.text = data.value(forKey: "captain12") as? String
            }
        } catch {
            print("Failed")
        }
        }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpTuesdaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject22") as? String
                    roomField.text = data.value(forKey: "room22") as? String
                    timeField.text = data.value(forKey: "time22") as? String
                    emailField.text = data.value(forKey: "emailGroup22") as? String
                    groupField.text = data.value(forKey: "group22") as? String
                    captainField.text = data.value(forKey: "captain22") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpWednesdaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject32") as? String
                    roomField.text = data.value(forKey: "room32") as? String
                    timeField.text = data.value(forKey: "time32") as? String
                    emailField.text = data.value(forKey: "emailGroup32") as? String
                    groupField.text = data.value(forKey: "group32") as? String
                    captainField.text = data.value(forKey: "captain32") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpThursdaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject42") as? String
                    roomField.text = data.value(forKey: "room42") as? String
                    timeField.text = data.value(forKey: "time42") as? String
                    emailField.text = data.value(forKey: "emailGroup42") as? String
                    groupField.text = data.value(forKey: "group42") as? String
                    captainField.text = data.value(forKey: "captain42") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpFridaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject52") as? String
                    roomField.text = data.value(forKey: "room52") as? String
                    timeField.text = data.value(forKey: "time52") as? String
                    emailField.text = data.value(forKey: "emailGroup52") as? String
                    groupField.text = data.value(forKey: "group52") as? String
                    captainField.text = data.value(forKey: "captain52") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownMondaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject62") as? String
                    roomField.text = data.value(forKey: "room62") as? String
                    timeField.text = data.value(forKey: "time62") as? String
                    emailField.text = data.value(forKey: "emailGroup62") as? String
                    groupField.text = data.value(forKey: "group62") as? String
                    captainField.text = data.value(forKey: "captain62") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownTuesdaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject72") as? String
                    roomField.text = data.value(forKey: "room72") as? String
                    timeField.text = data.value(forKey: "time72") as? String
                    emailField.text = data.value(forKey: "emailGroup72") as? String
                    groupField.text = data.value(forKey: "group72") as? String
                    captainField.text = data.value(forKey: "captain72") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownWednesdaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject82") as? String
                    roomField.text = data.value(forKey: "room82") as? String
                    timeField.text = data.value(forKey: "time82") as? String
                    emailField.text = data.value(forKey: "emailGroup82") as? String
                    groupField.text = data.value(forKey: "group82") as? String
                    captainField.text = data.value(forKey: "captain82") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownThursdaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject92") as? String
                    roomField.text = data.value(forKey: "room92") as? String
                    timeField.text = data.value(forKey: "time92") as? String
                    emailField.text = data.value(forKey: "emailGroup92") as? String
                    groupField.text = data.value(forKey: "group92") as? String
                    captainField.text = data.value(forKey: "captain92") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownFridaysecond")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject102") as? String
                    roomField.text = data.value(forKey: "room102") as? String
                    timeField.text = data.value(forKey: "time102") as? String
                    emailField.text = data.value(forKey: "emailGroup102") as? String
                    groupField.text = data.value(forKey: "group102") as? String
                    captainField.text = data.value(forKey: "captain102") as? String
                }
            } catch {
                print("Failed")
            }
        }
        
        subjectLabel.layer.borderWidth = 1.0
        roomLabel.layer.borderWidth = 1.0
        timeLabel.layer.borderWidth = 1.0
        emailLabel.layer.borderWidth = 1.0
        groupLabel.layer.borderWidth = 1.0
        captainLabel.layer.borderWidth = 1.0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == captainField {
            scroll.setContentOffset(CGPoint(x: 0, y: 30), animated: true)
        }
        else if textField == groupField {
            scroll.setContentOffset(CGPoint(x: 0, y: 30), animated: true)
        }
        else if textField == emailField {
            scroll.setContentOffset(CGPoint(x: 0, y: 30), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        scroll.setContentOffset(CGPoint(x: 0, y: -65), animated: true)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if dayKey == "UpMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpMondaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject12")
            newUser.setValue(self.roomField!.text, forKey: "room12")
            newUser.setValue(self.timeField!.text, forKey: "time12")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup12")
            newUser.setValue(self.groupField!.text, forKey: "group12")
            newUser.setValue(self.captainField!.text, forKey: "captain12")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpTuesdaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject22")
            newUser.setValue(self.roomField!.text, forKey: "room22")
            newUser.setValue(self.timeField!.text, forKey: "time22")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup22")
            newUser.setValue(self.groupField!.text, forKey: "group22")
            newUser.setValue(self.captainField!.text, forKey: "captain22")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpWednesdaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject32")
            newUser.setValue(self.roomField!.text, forKey: "room32")
            newUser.setValue(self.timeField!.text, forKey: "time32")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup32")
            newUser.setValue(self.groupField!.text, forKey: "group32")
            newUser.setValue(self.captainField!.text, forKey: "captain32")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpThursdaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject42")
            newUser.setValue(self.roomField!.text, forKey: "room42")
            newUser.setValue(self.timeField!.text, forKey: "time42")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup42")
            newUser.setValue(self.groupField!.text, forKey: "group42")
            newUser.setValue(self.captainField!.text, forKey: "captain42")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpFridaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject52")
            newUser.setValue(self.roomField!.text, forKey: "room52")
            newUser.setValue(self.timeField!.text, forKey: "time52")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup52")
            newUser.setValue(self.groupField!.text, forKey: "group52")
            newUser.setValue(self.captainField!.text, forKey: "captain52")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownMondaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject62")
            newUser.setValue(self.roomField!.text, forKey: "room62")
            newUser.setValue(self.timeField!.text, forKey: "time62")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup62")
            newUser.setValue(self.groupField!.text, forKey: "group62")
            newUser.setValue(self.captainField!.text, forKey: "captain62")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownTuesdaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject72")
            newUser.setValue(self.roomField!.text, forKey: "room72")
            newUser.setValue(self.timeField!.text, forKey: "time72")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup72")
            newUser.setValue(self.groupField!.text, forKey: "group72")
            newUser.setValue(self.captainField!.text, forKey: "captain72")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownWednesdaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject82")
            newUser.setValue(self.roomField!.text, forKey: "room82")
            newUser.setValue(self.timeField!.text, forKey: "time82")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup82")
            newUser.setValue(self.groupField!.text, forKey: "group82")
            newUser.setValue(self.captainField!.text, forKey: "captain82")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownThursdaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject92")
            newUser.setValue(self.roomField!.text, forKey: "room92")
            newUser.setValue(self.timeField!.text, forKey: "time92")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup92")
            newUser.setValue(self.groupField!.text, forKey: "group92")
            newUser.setValue(self.captainField!.text, forKey: "captain92")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownFridaysecond", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject102")
            newUser.setValue(self.roomField!.text, forKey: "room102")
            newUser.setValue(self.timeField!.text, forKey: "time102")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup102")
            newUser.setValue(self.groupField!.text, forKey: "group102")
            newUser.setValue(self.captainField!.text, forKey: "captain102")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
    }
}
