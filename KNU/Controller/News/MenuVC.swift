//
//  MenuVC.swift
//  KNU
//
//  Created by Иван on 16.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

  
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
}
