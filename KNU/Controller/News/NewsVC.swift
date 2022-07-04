//
//  NewsVC.swift
//  KNU
//
//  Created by Иван on 08.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class NewsVC: UIViewController,GADBannerViewDelegate {

  
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = GADRequest()
        bannerView.adUnitID = "ca-app-pub-7516535375184526/7821748887"
        bannerView.rootViewController = self
        bannerView.delegate = self
        bannerView.load(request)
    }
    
    
    @IBAction func TeacherButton(_ sender: UIButton) {
        
    }
}
