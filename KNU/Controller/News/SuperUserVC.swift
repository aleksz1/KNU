//
//  SuperUserVC.swift
//  KNU
//
//  Created by Иван on 08.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import FirebaseDatabase
import UserNotifications

class SuperUserVC: UIViewController,UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        textView.delegate = self
        textView.returnKeyType = .done
    }
    
    @IBAction func addPost(_ sender: UIBarButtonItem) {
        if CheckInternet.connection() {
        ref?.child("Child").childByAutoId().setValue(textView.text)
        //Alert
        let alert = UIAlertController(title: "Увага!", message: "Новина відправлена", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Закрити", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Увага!", message: "Немає інтернет зв'язку", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Закрити", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}
