//
//  LesssonsVC.swift
//  KNU
//
//  Created by Иван on 16.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import Parse
import GoogleMobileAds

class LesssonsVC: UITableViewController,GADBannerViewDelegate {

    @IBOutlet weak var upText: UITextView!
    @IBOutlet weak var middleText: UITextView!
    @IBOutlet weak var downText: UITextView!
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var downnText: UITextView!
    
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
        downnText.centerText()
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
        downnText.attributedText = result[3].makeBold()
    }
    }

