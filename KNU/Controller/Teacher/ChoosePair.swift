//
//  ChoosePair.swift
//  KNU
//
//  Created by Иван on 09.06.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ChoosePair: UIViewController,GADBannerViewDelegate {
        
    var dayKey = String()
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = GADRequest()
        bannerView.adUnitID = "ca-app-pub-7516535375184526/7821748887"
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
    }
    
    enum choosePair: Int{
        case FirstPair = 11
        case SecondPair = 12
        case ThirdPair = 13
        case FourPair = 14
    }
    
    @IBAction func weeksButtonPressed(_ sender: UIButton) {
        guard let day = choosePair.init(rawValue: sender.tag) else { return }
        switch day {
        case .FirstPair:
            performSegue(withIdentifier: "FirstPair", sender: self)
            break
        case .SecondPair:
            performSegue(withIdentifier: "SecondPair", sender: self)
            break
        case .ThirdPair:
            performSegue(withIdentifier: "ThirdPair", sender: self)
            break
        case .FourPair:
            performSegue(withIdentifier: "FourPair", sender: self)
            break
        }
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstPair" {
            if let destinationVC = segue.destination as? SheduleTeacher {
                destinationVC.dayKey = dayKey
            }
        }
        if segue.identifier == "SecondPair" {
            if let destinationVC = segue.destination as? SheduleTeacherSecond {
                destinationVC.dayKey = dayKey
            }
        }
        if segue.identifier == "ThirdPair" {
            if let destinationVC = segue.destination as? SheduleTeacherThird{
                destinationVC.dayKey = dayKey
            }
        }
        if segue.identifier == "FourPair" {
        if let destinationVC = segue.destination as? SheduleTeacherFour{
            destinationVC.dayKey = dayKey
        }
      }
    }
}
