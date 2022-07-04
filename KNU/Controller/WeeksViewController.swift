//
//  WeeksViewController.swift
//  KNU
//
//  Created by Иван on 09.03.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import Parse
import SafariServices
import GoogleMobileAds

class WeeksViewController: UIViewController,SFSafariViewControllerDelegate,GADBannerViewDelegate {
    
    @IBOutlet weak var downWeek: UILabel!
    @IBOutlet weak var upWeek: UILabel!
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var upTuesday: UIButton!
    var indexThird = 0
    var x = 0
    var timer = Timer()
    var group: Group? {
        didSet{
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = GADRequest()
        bannerView.adUnitID = "ca-app-pub-7516535375184526/7821748887"
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
        saveAllObjects(allObjects: group!)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        scheduleTimer()
    }
 
    func scheduleTimer() {
        let today = NSDate()
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let components = calendar!.components([.weekOfMonth], from: today as Date)
        /////blink
        if components.weekOfMonth == 2 {
            self.downWeek.alpha=0
            UIView.animate(withDuration: 1, delay: 0.2, options:[.repeat,.autoreverse],
                           animations:{ self.downWeek.alpha=1.0}, completion: nil)
        } else {
            print("nill")
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
  
    func saveAllObjects(allObjects: Group) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(allObjects){
            UserDefaults.standard.set(encoded, forKey: "group")
            UserDefaults.standard.set(true, forKey: "saveData")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexThird = indexPath.row
        performSegue(withIdentifier: "showLessons", sender: indexThird)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLessons" {
            if let destinationVC = segue.destination as? LesssonsVC {
                destinationVC.lesson = sender as! String
            }
        }
    }
    
    enum DaysOfWeek: Int {
        case UpMonday = 0
        case UpTuesday = 1
        case UpWednesday = 2
        case UpThursday = 3
        case UpFriday = 4
        case downMonday = 5
        case downTuesday = 6
        case downWednesday = 7
        case downThursday = 8
        case downFriday = 9
        
        var stringRepresentation: String {
            switch self {
            case .UpMonday:
                return "ПН"
            case .UpTuesday:
                return "ВТ"
            case .UpWednesday:
                return "СР"
            case .UpThursday:
                return "ЧТ"
            case .UpFriday:
                return "ПТ"
            //Down week
                
            case .downMonday:
                return "ПН"
            case .downTuesday:
                return "ВТ"
            case .downWednesday:
                return "СР"
            case .downThursday:
                return "ЧТ"
            case .downFriday:
                 return "ПТ"
            }
        }
    }
    
    @IBAction func seesion(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "ResultView") as! UINavigationController
        self.present(resultViewController, animated:true, completion:nil)
    }
    
    @IBAction func weekButtonPressed(_ sender: UIButton) {
        guard let day = DaysOfWeek.init(rawValue: sender.tag) else { return }
        switch day {
        case .UpMonday:
            let mondayTable = group?.UpMonday
            performSegue(withIdentifier: "showLessons", sender: mondayTable)
            break
        case .UpTuesday:
            let tuesdayTable = group?.UpTuesday
            performSegue(withIdentifier: "showLessons", sender: tuesdayTable)
            break
        case .UpWednesday:
            let wednesdayTable = group?.UpWednesday
            performSegue(withIdentifier: "showLessons", sender: wednesdayTable)
            break
        case .UpThursday:
            let thursdayTable = group?.UpThursday
            performSegue(withIdentifier: "showLessons", sender: thursdayTable)
            break
        case .UpFriday:
            let fridayTable = group?.UpFriday
            performSegue(withIdentifier: "showLessons", sender: fridayTable)
            break
        case .downMonday:
            let mondayDownTable = group?.downMonday
            performSegue(withIdentifier: "showLessons", sender: mondayDownTable)
            break
        case .downTuesday:
            let tuesdayDownTable = group?.downTuesday
            performSegue(withIdentifier: "showLessons", sender: tuesdayDownTable)
            break
        case .downWednesday:
            let wednesdayDownTable = group?.downWednesday
            performSegue(withIdentifier: "showLessons", sender: wednesdayDownTable)
            break
        case .downThursday:
            let thursdayDownTable = group?.downThursday
            performSegue(withIdentifier: "showLessons", sender: thursdayDownTable)
            break
        case .downFriday:
            let fridayDownTable = group?.downFriday
            performSegue(withIdentifier: "showLessons", sender: fridayDownTable)
            break
        default:
            break
        }
    }
    
    @IBAction func telegramUrl(_ sender: UIButton) {
        let urlString = "https://t.me/aleksznoob"
        let tgUrl = URL.init(string:urlString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        if UIApplication.shared.canOpenURL(tgUrl!)
        {
            UIApplication.shared.openURL(tgUrl!)
        }else
        {
            //App not installed.
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
extension Date {
    var hour: Int { return Calendar.current.component(.hour, from: self) } // get hour only from Date
}
