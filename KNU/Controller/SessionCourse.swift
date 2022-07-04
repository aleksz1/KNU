//
//  SessionCourse.swift
//  KNU
//
//  Created by Иван on 28.05.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import Foundation
import UIKit

class SessionCourse: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var coursesSession: [String] = ["Перший курс", "Другий курс", "Третій курс", "Четвертий курс"]
    let cellReuseIdentifier = "CoursesCell"
    var selectedItem = Int()

        override func viewDidLoad() {
            super.viewDidLoad()
            self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
            tableView.delegate = self
            tableView.dataSource = self
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.coursesSession.count
        }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
            cell.textLabel?.text = self.coursesSession[indexPath.row]
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = indexPath.row
        performSegue(withIdentifier: "showPhoto", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPhoto"{
            if let nextViewController = segue.destination as? ShowPhotoOfSession{
                nextViewController.selectedCourse = selectedItem
            }
        }
    }
    
    @IBAction func backToWeeks(_ sender: UIBarButtonItem) {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let resultViewController = storyBoard.instantiateViewController(withIdentifier: "showThirdDetails") as! WeeksViewController
            //self.present(resultViewController, animated:true, completion:nil)
            self.dismiss(animated: true, completion: nil)
        }
    }
