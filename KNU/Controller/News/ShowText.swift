//
//  ShowText.swift
//  KNU
//
//  Created by Иван on 08.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class ShowText: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text! = text
    }
}
