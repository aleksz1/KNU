//
//  UserVC.swift
//  KNU
//
//  Created by Иван on 08.09.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import FirebaseDatabase

class UserVC: UIViewController,UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    var postData = [String]()
    var textForShowText = String()
    var isRead: Bool!
    var massive = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isRead = false
        tableView.delegate = self
        tableView.dataSource = self
        
        ref = Database.database().reference()
        databaseHandle = ref?.child("Child").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? String
            if let actualPost = post{
                self.postData.insert(actualPost,at:0)
                self.tableView.reloadData()
            }
        })
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MySell")
        cell?.textLabel?.text = self.postData[indexPath.row]
        cell?.selectionStyle = .none
     //   cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.textForShowText = self.postData[indexPath.row]
        performSegue(withIdentifier: "showText", sender: self)
//        let tappedCell = tableView.cellForRow(at: indexPath)
//        tappedCell?.textLabel?.font = UIFont.systemFont(ofSize: 18)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showText" {
            if let destinationVC = segue.destination as? ShowText {
                destinationVC.text = textForShowText
            }
        }
    }
}


