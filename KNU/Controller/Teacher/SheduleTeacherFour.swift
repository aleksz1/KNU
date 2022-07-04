//
//  SheduleTeacherFour.swift
//  KNU
//
//  Created by Иван on 23.07.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import CoreData
import GoogleMobileAds

class SheduleTeacherFour: UIViewController,UITextFieldDelegate,GADBannerViewDelegate {
    
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
        self.subjectField.delegate = self
        self.roomField.delegate = self
        self.timeField.delegate = self
        self.emailField.delegate = self
        self.groupField.delegate = self
        self.captainField.delegate = self
        
        if dayKey == "UpMonday"{
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpMondayfour")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                subjectField.text = data.value(forKey: "subject14") as? String
                roomField.text = data.value(forKey: "room14") as? String
                timeField.text = data.value(forKey: "time14") as? String
                emailField.text = data.value(forKey: "emailGroup14") as? String
                groupField.text = data.value(forKey: "group14") as? String
                captainField.text = data.value(forKey: "captain14") as? String
            }
        } catch {
            print("Failed")
        }
        }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpTuesdayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject24") as? String
                    roomField.text = data.value(forKey: "room24") as? String
                    timeField.text = data.value(forKey: "time24") as? String
                    emailField.text = data.value(forKey: "emailGroup24") as? String
                    groupField.text = data.value(forKey: "group24") as? String
                    captainField.text = data.value(forKey: "captain24") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpWednesdayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject34") as? String
                    roomField.text = data.value(forKey: "room34") as? String
                    timeField.text = data.value(forKey: "time34") as? String
                    emailField.text = data.value(forKey: "emailGroup34") as? String
                    groupField.text = data.value(forKey: "group34") as? String
                    captainField.text = data.value(forKey: "captain34") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpThursdayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject44") as? String
                    roomField.text = data.value(forKey: "room44") as? String
                    timeField.text = data.value(forKey: "time44") as? String
                    emailField.text = data.value(forKey: "emailGroup44") as? String
                    groupField.text = data.value(forKey: "group44") as? String
                    captainField.text = data.value(forKey: "captain44") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpFridayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject54") as? String
                    roomField.text = data.value(forKey: "room54") as? String
                    timeField.text = data.value(forKey: "time54") as? String
                    emailField.text = data.value(forKey: "emailGroup54") as? String
                    groupField.text = data.value(forKey: "group54") as? String
                    captainField.text = data.value(forKey: "captain54") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownMondayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject64") as? String
                    roomField.text = data.value(forKey: "room64") as? String
                    timeField.text = data.value(forKey: "time64") as? String
                    emailField.text = data.value(forKey: "emailGroup64") as? String
                    groupField.text = data.value(forKey: "group64") as? String
                    captainField.text = data.value(forKey: "captain64") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownTuesdayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject74") as? String
                    roomField.text = data.value(forKey: "room74") as? String
                    timeField.text = data.value(forKey: "time74") as? String
                    emailField.text = data.value(forKey: "emailGroup74") as? String
                    groupField.text = data.value(forKey: "group74") as? String
                    captainField.text = data.value(forKey: "captain74") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownWednesdayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject84") as? String
                    roomField.text = data.value(forKey: "room84") as? String
                    timeField.text = data.value(forKey: "time84") as? String
                    emailField.text = data.value(forKey: "emailGroup84") as? String
                    groupField.text = data.value(forKey: "group84") as? String
                    captainField.text = data.value(forKey: "captain84") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownThursdayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject94") as? String
                    roomField.text = data.value(forKey: "room94") as? String
                    timeField.text = data.value(forKey: "time94") as? String
                    emailField.text = data.value(forKey: "emailGroup94") as? String
                    groupField.text = data.value(forKey: "group94") as? String
                    captainField.text = data.value(forKey: "captain94") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownFridayfour")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject104") as? String
                    roomField.text = data.value(forKey: "room104") as? String
                    timeField.text = data.value(forKey: "time104") as? String
                    emailField.text = data.value(forKey: "emailGroup104") as? String
                    groupField.text = data.value(forKey: "group104") as? String
                    captainField.text = data.value(forKey: "captain104") as? String
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
        let entity = NSEntityDescription.entity(forEntityName: "UpMondayfour", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue(self.subjectField!.text, forKey: "subject14")
        newUser.setValue(self.roomField!.text, forKey: "room14")
        newUser.setValue(self.timeField!.text, forKey: "time14")
        newUser.setValue(self.emailField!.text, forKey: "emailGroup14")
        newUser.setValue(self.groupField!.text, forKey: "group14")
        newUser.setValue(self.captainField!.text, forKey: "captain14")
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
    }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpTuesdayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject24")
            newUser.setValue(self.roomField!.text, forKey: "room24")
            newUser.setValue(self.timeField!.text, forKey: "time24")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup24")
            newUser.setValue(self.groupField!.text, forKey: "group24")
            newUser.setValue(self.captainField!.text, forKey: "captain24")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpWednesdayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject34")
            newUser.setValue(self.roomField!.text, forKey: "room34")
            newUser.setValue(self.timeField!.text, forKey: "time34")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup34")
            newUser.setValue(self.groupField!.text, forKey: "group34")
            newUser.setValue(self.captainField!.text, forKey: "captain34")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpThursdayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject44")
            newUser.setValue(self.roomField!.text, forKey: "room44")
            newUser.setValue(self.timeField!.text, forKey: "time44")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup44")
            newUser.setValue(self.groupField!.text, forKey: "group44")
            newUser.setValue(self.captainField!.text, forKey: "captain44")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpFridayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject54")
            newUser.setValue(self.roomField!.text, forKey: "room54")
            newUser.setValue(self.timeField!.text, forKey: "time54")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup54")
            newUser.setValue(self.groupField!.text, forKey: "group54")
            newUser.setValue(self.captainField!.text, forKey: "captain54")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownMondayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject64")
            newUser.setValue(self.roomField!.text, forKey: "room64")
            newUser.setValue(self.timeField!.text, forKey: "time64")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup64")
            newUser.setValue(self.groupField!.text, forKey: "group64")
            newUser.setValue(self.captainField!.text, forKey: "captain64")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownTuesdayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject74")
            newUser.setValue(self.roomField!.text, forKey: "room74")
            newUser.setValue(self.timeField!.text, forKey: "time74")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup74")
            newUser.setValue(self.groupField!.text, forKey: "group74")
            newUser.setValue(self.captainField!.text, forKey: "captain74")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownWednesdayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject84")
            newUser.setValue(self.roomField!.text, forKey: "room84")
            newUser.setValue(self.timeField!.text, forKey: "time84")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup84")
            newUser.setValue(self.groupField!.text, forKey: "group84")
            newUser.setValue(self.captainField!.text, forKey: "captain84")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownThursdayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject94")
            newUser.setValue(self.roomField!.text, forKey: "room94")
            newUser.setValue(self.timeField!.text, forKey: "time94")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup94")
            newUser.setValue(self.groupField!.text, forKey: "group94")
            newUser.setValue(self.captainField!.text, forKey: "captain94")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownFridayfour", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject104")
            newUser.setValue(self.roomField!.text, forKey: "room104")
            newUser.setValue(self.timeField!.text, forKey: "time104")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup104")
            newUser.setValue(self.groupField!.text, forKey: "group104")
            newUser.setValue(self.captainField!.text, forKey: "captain104")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
    }
}
