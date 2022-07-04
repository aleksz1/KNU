//
//  SheduleTeacher.swift
//  KNU
//
//  Created by Иван on 25.06.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import CoreData
import GoogleMobileAds

class SheduleTeacher: UIViewController,UITextFieldDelegate,GADBannerViewDelegate {
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var scroll: UIScrollView!
    var dayKey = String()
    
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
        
        self.hideKeyboardWhenTappedAround()
        self.subjectField.delegate = self
        self.roomField.delegate = self
        self.timeField.delegate = self
        self.emailField.delegate = self
        self.groupField.delegate = self
        self.captainField.delegate = self
        
        if dayKey == "UpMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpMondayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject11") as? String
                    roomField.text = data.value(forKey: "room11") as? String
                    timeField.text = data.value(forKey: "time11") as? String
                    emailField.text = data.value(forKey: "emailGroup11") as? String
                    groupField.text = data.value(forKey: "group11") as? String
                    captainField.text = data.value(forKey: "captain11") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpTuesdayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject21") as? String
                    roomField.text = data.value(forKey: "room21") as? String
                    timeField.text = data.value(forKey: "time21") as? String
                    emailField.text = data.value(forKey: "emailGroup21") as? String
                    groupField.text = data.value(forKey: "group21") as? String
                    captainField.text = data.value(forKey: "captain21") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpWednesdayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject31") as? String
                    roomField.text = data.value(forKey: "room31") as? String
                    timeField.text = data.value(forKey: "time31") as? String
                    emailField.text = data.value(forKey: "emailGroup31") as? String
                    groupField.text = data.value(forKey: "group31") as? String
                    captainField.text = data.value(forKey: "captain31") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpThursdayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject41") as? String
                    roomField.text = data.value(forKey: "room41") as? String
                    timeField.text = data.value(forKey: "time41") as? String
                    emailField.text = data.value(forKey: "emailGroup41") as? String
                    groupField.text = data.value(forKey: "group41") as? String
                    captainField.text = data.value(forKey: "captain41") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpFridayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject51") as? String
                    roomField.text = data.value(forKey: "room51") as? String
                    timeField.text = data.value(forKey: "time51") as? String
                    emailField.text = data.value(forKey: "emailGroup51") as? String
                    groupField.text = data.value(forKey: "group51") as? String
                    captainField.text = data.value(forKey: "captain51") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownMondayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject61") as? String
                    roomField.text = data.value(forKey: "room61") as? String
                    timeField.text = data.value(forKey: "time61") as? String
                    emailField.text = data.value(forKey: "emailGroup61") as? String
                    groupField.text = data.value(forKey: "group61") as? String
                    captainField.text = data.value(forKey: "captain61") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownTuesdayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject71") as? String
                    roomField.text = data.value(forKey: "room71") as? String
                    timeField.text = data.value(forKey: "time71") as? String
                    emailField.text = data.value(forKey: "emailGroup71") as? String
                    groupField.text = data.value(forKey: "group71") as? String
                    captainField.text = data.value(forKey: "captain71") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownWednesdayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject81") as? String
                    roomField.text = data.value(forKey: "room81") as? String
                    timeField.text = data.value(forKey: "time81") as? String
                    emailField.text = data.value(forKey: "emailGroup81") as? String
                    groupField.text = data.value(forKey: "group81") as? String
                    captainField.text = data.value(forKey: "captain81") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownThursdayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject91") as? String
                    roomField.text = data.value(forKey: "room91") as? String
                    timeField.text = data.value(forKey: "time91") as? String
                    emailField.text = data.value(forKey: "emailGroup91") as? String
                    groupField.text = data.value(forKey: "group91") as? String
                    captainField.text = data.value(forKey: "captain91") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownFridayfirst")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject101") as? String
                    roomField.text = data.value(forKey: "room101") as? String
                    timeField.text = data.value(forKey: "time101") as? String
                    emailField.text = data.value(forKey: "emailGroup101") as? String
                    groupField.text = data.value(forKey: "group101") as? String
                    captainField.text = data.value(forKey: "captain101") as? String
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
            let entity = NSEntityDescription.entity(forEntityName: "UpMondayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject11")
            newUser.setValue(self.roomField!.text, forKey: "room11")
            newUser.setValue(self.timeField!.text, forKey: "time11")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup11")
            newUser.setValue(self.groupField!.text, forKey: "group11")
            newUser.setValue(self.captainField!.text, forKey: "captain11")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpTuesdayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject21")
            newUser.setValue(self.roomField!.text, forKey: "room21")
            newUser.setValue(self.timeField!.text, forKey: "time21")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup21")
            newUser.setValue(self.groupField!.text, forKey: "group21")
            newUser.setValue(self.captainField!.text, forKey: "captain21")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpWednesdayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject31")
            newUser.setValue(self.roomField!.text, forKey: "room31")
            newUser.setValue(self.timeField!.text, forKey: "time31")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup31")
            newUser.setValue(self.groupField!.text, forKey: "group31")
            newUser.setValue(self.captainField!.text, forKey: "captain31")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpThursdayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject41")
            newUser.setValue(self.roomField!.text, forKey: "room41")
            newUser.setValue(self.timeField!.text, forKey: "time41")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup41")
            newUser.setValue(self.groupField!.text, forKey: "group41")
            newUser.setValue(self.captainField!.text, forKey: "captain41")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpFridayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject51")
            newUser.setValue(self.roomField!.text, forKey: "room51")
            newUser.setValue(self.timeField!.text, forKey: "time51")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup51")
            newUser.setValue(self.groupField!.text, forKey: "group51")
            newUser.setValue(self.captainField!.text, forKey: "captain51")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownMondayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject61")
            newUser.setValue(self.roomField!.text, forKey: "room61")
            newUser.setValue(self.timeField!.text, forKey: "time61")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup61")
            newUser.setValue(self.groupField!.text, forKey: "group61")
            newUser.setValue(self.captainField!.text, forKey: "captain61")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownTuesdayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject71")
            newUser.setValue(self.roomField!.text, forKey: "room71")
            newUser.setValue(self.timeField!.text, forKey: "time71")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup71")
            newUser.setValue(self.groupField!.text, forKey: "group71")
            newUser.setValue(self.captainField!.text, forKey: "captain71")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownWednesdayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject81")
            newUser.setValue(self.roomField!.text, forKey: "room81")
            newUser.setValue(self.timeField!.text, forKey: "time81")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup81")
            newUser.setValue(self.groupField!.text, forKey: "group81")
            newUser.setValue(self.captainField!.text, forKey: "captain81")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownThursdayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject91")
            newUser.setValue(self.roomField!.text, forKey: "room91")
            newUser.setValue(self.timeField!.text, forKey: "time91")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup91")
            newUser.setValue(self.groupField!.text, forKey: "group91")
            newUser.setValue(self.captainField!.text, forKey: "captain91")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownFridayfirst", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject101")
            newUser.setValue(self.roomField!.text, forKey: "room101")
            newUser.setValue(self.timeField!.text, forKey: "time101")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup101")
            newUser.setValue(self.groupField!.text, forKey: "group101")
            newUser.setValue(self.captainField!.text, forKey: "captain101")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
    }
}
