//
//  LessonsVC.swift
//  KNU
//
//  Created by Иван on 15.03.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import Parse
import GoogleMobileAds

class LessonsVC: UIViewController, GADBannerViewDelegate {

    @IBOutlet weak var upText: UITextView!
    @IBOutlet weak var middleText: UITextView!
    @IBOutlet weak var downText: UITextView!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    var lesson: String = ""
    
    struct lessons {
        let name: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = GADRequest()
        bannerView.adUnitID = "ca-app-pub-7516535375184526/7821748887"
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
        
        displayClassesInfo()
        roundedCorner()
        upText.centerText()
        middleText.centerText()
        downText.centerText()
    }
    
    func roundedCorner(){
        upText.layer.cornerRadius = 8.0
        middleText.layer.cornerRadius = 8.0
        downText.layer.cornerRadius = 8.0
    }
    
    func displayClassesInfo(){
        let result = lesson.split(separator: ",")
        upText.attributedText = result[0].makeBold()
        middleText.attributedText = result[1].makeBold()
        downText.attributedText = result[2].makeBold()
    }
}
