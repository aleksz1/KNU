//
//  TeacherVC.swift
//  KNU
//
//  Created by Иван on 09.04.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import CoreData
import SafariServices
import GoogleMobileAds

class TeacherVC: UIViewController,SFSafariViewControllerDelegate,GADBannerViewDelegate {
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var upWeek: UILabel!
    @IBOutlet weak var downWeek: UILabel!
    
    var keys = String()
    var days = Table()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var dayKey = String()

    
     enum DaysOfWeek: Int {
        case UpMonday = 11
        case UpTuesday = 12
        case UpWednesday = 13
        case UpThursday = 14
        case UpFriday = 15
        case downMonday = 16
        case downTuesday = 17
        case downWednesday = 18
        case downThursday = 19
        case downFriday = 20
    }
    
    @IBAction func weeksButtonPressed(_ sender: UIButton) {
        guard let day = DaysOfWeek.init(rawValue: sender.tag) else { return }
        switch day {
        case .UpMonday:
            keys = "UpMonday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .UpTuesday:
            keys = "UpTuesday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .UpWednesday:
            keys = "UpWednesday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .UpThursday:
            keys = "UpThursday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .UpFriday:
            keys = "UpFriday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .downMonday:
            keys = "DownMonday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .downTuesday:
            keys = "DownTuesday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .downWednesday:
            keys = "DownWednesday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .downThursday:
            keys = "DownThursday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        case .downFriday:
            keys = "DownFriday"
            performSegue(withIdentifier: "showTeacherLessons", sender: self)
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTeacherLessons" {
            if let destinationVC = segue.destination as? ChoosePair {
                destinationVC.dayKey = keys
                print(keys)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = GADRequest()
        bannerView.adUnitID = "ca-app-pub-7516535375184526/7821748887"
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        scheduleTimer()
    }
    
    func scheduleTimer() {
        let today = NSDate()
        let nextTue = Calendar.current.date(byAdding: .day, value: 6, to: today as Date)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let todayString = formatter.string(from: today as Date)
        let nextString = formatter.string(from: nextTue!)
        formatter.dateFormat = "dd-MMM-yyyy"
        
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let components = calendar!.components([.weekOfMonth], from: today as Date)
        /////blink
        if components.weekOfMonth == 2 {
            self.downWeek.alpha=0
            UIView.animate(withDuration: 1, delay: 0.2, options:[.repeat,.autoreverse],
                           animations:{ self.downWeek.alpha=1.0}, completion: nil)
        } else {
            print("It's not Tuesday")
        }
        if components.weekOfMonth == 3 {
            self.upWeek.alpha=0
            UIView.animate(withDuration: 1, delay: 0.2, options:[.repeat,.autoreverse],
                           animations:{ self.upWeek.alpha=1.0}, completion: nil)
        } else {
            print("It's not Tuesday")
        }
        if components.weekOfMonth == 4 {
            self.downWeek.alpha=0
            UIView.animate(withDuration: 1, delay: 0.2, options:[.repeat,.autoreverse],
                           animations:{ self.downWeek.alpha=1.0}, completion: nil)
        } else {
            print("It's not Tuesday")
        }
        if components.weekOfMonth == 5 {
            self.upWeek.alpha=0
            UIView.animate(withDuration: 1, delay: 0.2, options:[.repeat,.autoreverse],
                           animations:{ self.upWeek.alpha=1.0}, completion: nil)
        } else {
            print("It's not Tuesday")
        }
    }

    @IBAction func telegramURL(_ sender: UIButton) {
        let urlString = "https://t.me/aleksznoob"
        let tgUrl = URL.init(string:urlString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        if UIApplication.shared.canOpenURL(tgUrl!)
        {
            UIApplication.shared.openURL(tgUrl!)
        }else
        {
        }
    }
    
    @IBAction func mapURL(_ sender: UIButton) {
        let urlString = "http://mapknulaw.org.ua/newmap/"
        if let url = URL(string: urlString) {
            let vc = SFSafariViewController(url: url, entersReaderIfAvailable: true)
            vc.delegate = self
            present(vc, animated: true)
        }
    }
}

