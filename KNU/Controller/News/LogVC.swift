//
//  LogVC.swift
//  KNU
//
//  Created by Иван on 16.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class LogVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var continueButton: UIButton!
    
    var activityView:UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        continueButton = RoundedWhiteButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        activityView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        activityView.color = secondaryColor
        activityView.frame = CGRect(x: 0, y: 0, width: 50.0, height: 50.0)
        view.addSubview(activityView)
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        if emailField.text == "knu"{
            if passwordField.text == "itdf777"{
                performSegue(withIdentifier: "sendText", sender: self)
            }
        }else{
            let alert = UIAlertController(title: "Увага!", message: "Невірний пароль", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Закрити", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    

}
