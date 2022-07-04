//
//  studentViewController.swift
//  KNU
//
//  Created by Иван on 06.03.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import SystemConfiguration

class StudentViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    var faculties = [Facultie]()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        ParseManager.getFaculties { faculties in
            self.faculties = faculties
            self.tableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
            if CheckInternet.connection() {
        self.Alert(Message: "Зачекайте появу факультету...")
            }else{
        self.Alert(Message: "Немає інтернет зв'язку")
        }
    }
    
    func Alert (Message: String){
        
        let alert = UIAlertController(title: "Увага!", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return faculties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = faculties[indexPath.row].name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "showFaculty", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFaculty" {
            if let destinationVC = segue.destination as? FacultyDetailsViewController {
                destinationVC.selectedFacultie = faculties[index]
            }
        }
    }
}
