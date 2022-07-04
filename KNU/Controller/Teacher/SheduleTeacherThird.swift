//
//  SheduleTeacherThird.swift
//  KNU
//
//  Created by Иван on 13.07.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import CoreData
import GoogleMobileAds

class SheduleTeacherThird: UIViewController,UITextFieldDelegate,GADBannerViewDelegate {
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var bannerView: GADBannerView!
    
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
        
        if dayKey == "UpMonday" {
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpMondaythird")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                subjectField.text = data.value(forKey: "subject13") as? String
                roomField.text = data.value(forKey: "room13") as? String
                timeField.text = data.value(forKey: "time13") as? String
                emailField.text = data.value(forKey: "emailGroup13") as? String
                groupField.text = data.value(forKey: "group13") as? String
                captainField.text = data.value(forKey: "captain13") as? String
            }
        } catch {
            print("Failed")
        }
        }
        if dayKey == "UpTuesday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpTuesdaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject23") as? String
                    roomField.text = data.value(forKey: "room23") as? String
                    timeField.text = data.value(forKey: "time23") as? String
                    emailField.text = data.value(forKey: "emailGroup23") as? String
                    groupField.text = data.value(forKey: "group23") as? String
                    captainField.text = data.value(forKey: "captain23") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpWednesday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpWednesdaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject33") as? String
                    roomField.text = data.value(forKey: "room33") as? String
                    timeField.text = data.value(forKey: "time33") as? String
                    emailField.text = data.value(forKey: "emailGroup33") as? String
                    groupField.text = data.value(forKey: "group33") as? String
                    captainField.text = data.value(forKey: "captain33") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpThursday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpThursdaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject43") as? String
                    roomField.text = data.value(forKey: "room43") as? String
                    timeField.text = data.value(forKey: "time43") as? String
                    emailField.text = data.value(forKey: "emailGroup43") as? String
                    groupField.text = data.value(forKey: "group43") as? String
                    captainField.text = data.value(forKey: "captain43") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "UpFriday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UpFridaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject53") as? String
                    roomField.text = data.value(forKey: "room53") as? String
                    timeField.text = data.value(forKey: "time53") as? String
                    emailField.text = data.value(forKey: "emailGroup53") as? String
                    groupField.text = data.value(forKey: "group53") as? String
                    captainField.text = data.value(forKey: "captain53") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownMonday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownMondaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject63") as? String
                    roomField.text = data.value(forKey: "room63") as? String
                    timeField.text = data.value(forKey: "time63") as? String
                    emailField.text = data.value(forKey: "emailGroup63") as? String
                    groupField.text = data.value(forKey: "group63") as? String
                    captainField.text = data.value(forKey: "captain63") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownTuesday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownTuesdaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject73") as? String
                    roomField.text = data.value(forKey: "room73") as? String
                    timeField.text = data.value(forKey: "time73") as? String
                    emailField.text = data.value(forKey: "emailGroup73") as? String
                    groupField.text = data.value(forKey: "group73") as? String
                    captainField.text = data.value(forKey: "captain73") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownWednesday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownWednesdaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject83") as? String
                    roomField.text = data.value(forKey: "room83") as? String
                    timeField.text = data.value(forKey: "time83") as? String
                    emailField.text = data.value(forKey: "emailGroup83") as? String
                    groupField.text = data.value(forKey: "group83") as? String
                    captainField.text = data.value(forKey: "captain83") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownThursday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownThursdaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject93") as? String
                    roomField.text = data.value(forKey: "room93") as? String
                    timeField.text = data.value(forKey: "time93") as? String
                    emailField.text = data.value(forKey: "emailGroup93") as? String
                    groupField.text = data.value(forKey: "group93") as? String
                    captainField.text = data.value(forKey: "captain93") as? String
                }
            } catch {
                print("Failed")
            }
        }
        if dayKey == "DownFriday" {
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DownFridaythird")
            request.returnsObjectsAsFaults = false
            do {
                let result = try context.fetch(request)
                for data in result as! [NSManagedObject] {
                    subjectField.text = data.value(forKey: "subject103") as? String
                    roomField.text = data.value(forKey: "room103") as? String
                    timeField.text = data.value(forKey: "time103") as? String
                    emailField.text = data.value(forKey: "emailGroup103") as? String
                    groupField.text = data.value(forKey: "group103") as? String
                    captainField.text = data.value(forKey: "captain103") as? String
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
            let entity = NSEntityDescription.entity(forEntityName: "UpMondaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject13")
            newUser.setValue(self.roomField!.text, forKey: "room13")
            newUser.setValue(self.timeField!.text, forKey: "time13")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup13")
            newUser.setValue(self.groupField!.text, forKey: "group13")
            newUser.setValue(self.captainField!.text, forKey: "captain13")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpTuesdaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject23")
            newUser.setValue(self.roomField!.text, forKey: "room23")
            newUser.setValue(self.timeField!.text, forKey: "time23")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup23")
            newUser.setValue(self.groupField!.text, forKey: "group23")
            newUser.setValue(self.captainField!.text, forKey: "captain23")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpWednesdaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject33")
            newUser.setValue(self.roomField!.text, forKey: "room33")
            newUser.setValue(self.timeField!.text, forKey: "time33")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup33")
            newUser.setValue(self.groupField!.text, forKey: "group33")
            newUser.setValue(self.captainField!.text, forKey: "captain33")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpThursdaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject43")
            newUser.setValue(self.roomField!.text, forKey: "room43")
            newUser.setValue(self.timeField!.text, forKey: "time43")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup43")
            newUser.setValue(self.groupField!.text, forKey: "group43")
            newUser.setValue(self.captainField!.text, forKey: "captain43")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "UpFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "UpFridaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject53")
            newUser.setValue(self.roomField!.text, forKey: "room53")
            newUser.setValue(self.timeField!.text, forKey: "time53")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup53")
            newUser.setValue(self.groupField!.text, forKey: "group53")
            newUser.setValue(self.captainField!.text, forKey: "captain53")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownMonday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownMondaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject63")
            newUser.setValue(self.roomField!.text, forKey: "room63")
            newUser.setValue(self.timeField!.text, forKey: "time63")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup63")
            newUser.setValue(self.groupField!.text, forKey: "group63")
            newUser.setValue(self.captainField!.text, forKey: "captain63")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownTuesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownTuesdaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject73")
            newUser.setValue(self.roomField!.text, forKey: "room73")
            newUser.setValue(self.timeField!.text, forKey: "time73")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup73")
            newUser.setValue(self.groupField!.text, forKey: "group73")
            newUser.setValue(self.captainField!.text, forKey: "captain73")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownWednesday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownWednesdaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject83")
            newUser.setValue(self.roomField!.text, forKey: "room83")
            newUser.setValue(self.timeField!.text, forKey: "time83")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup83")
            newUser.setValue(self.groupField!.text, forKey: "group83")
            newUser.setValue(self.captainField!.text, forKey: "captain83")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownThursday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownThursdaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject93")
            newUser.setValue(self.roomField!.text, forKey: "room93")
            newUser.setValue(self.timeField!.text, forKey: "time93")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup93")
            newUser.setValue(self.groupField!.text, forKey: "group93")
            newUser.setValue(self.captainField!.text, forKey: "captain93")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
        if dayKey == "DownFriday"{
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "DownFridaythird", in: context)
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            newUser.setValue(self.subjectField!.text, forKey: "subject103")
            newUser.setValue(self.roomField!.text, forKey: "room103")
            newUser.setValue(self.timeField!.text, forKey: "time103")
            newUser.setValue(self.emailField!.text, forKey: "emailGroup103")
            newUser.setValue(self.groupField!.text, forKey: "group103")
            newUser.setValue(self.captainField!.text, forKey: "captain103")
            do {
                try context.save()
            } catch {
                print("Failed saving")
            }
        }
    }
}
