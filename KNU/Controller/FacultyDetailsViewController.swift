//
//  FacultyDetailsViewController.swift
//  KNU
//
//  Created by Иван on 06.03.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import Parse

struct Course {
    let name: String
    let groups: PFRelation<PFObject>
}

class FacultyDetailsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var tableVIew: UITableView!
    
    var courses = [Course]() {
        didSet{
            tableVIew.reloadData()
        }
    }
    
    var selectedFacultie: Facultie? {
        didSet {
            ParseManager.getCourses(forRelarion: selectedFacultie!.courses) { self.courses = $0.sorted(by: { first, second -> Bool in
                return first.name < second.name
            }) }
        }
    }
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableVIew.delegate = self
        tableVIew.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondBasicCell")
        cell?.textLabel?.text = courses[indexPath.row].name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "showKurs", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showKurs" {
                if let destinationVC = segue.destination as? GroupsViewController {
                    let group = courses[index].groups
                    destinationVC.selectedCourse = group
                }
           }
    }
}
