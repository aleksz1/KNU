//
//  GroupsViewController.swift
//  KNU
//
//  Created by Иван on 09.03.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import Parse


struct Group:Codable {
    
    let name: String
    let UpMonday: String
    let UpTuesday: String
    let UpWednesday: String
    let UpThursday: String
    let UpFriday: String
    let downMonday: String
    let downTuesday: String
    let downWednesday: String
    let downThursday: String
    let downFriday: String
}

class GroupsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelView: UILabel!
    
    var group = [Group]() {
        didSet{
     tableView.reloadData()
        }
    }
    
    var selectedCourse: PFRelation<PFObject>? {
        didSet {
            ParseManager.getGroups(forRelarion: selectedCourse!) { groups in
                self.group = groups.sorted(by: { first, second -> Bool in
                    return first.name < second.name
                })
            }
        }
    }
    
    var indexTwo = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return group.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thirdBasicCell")
        cell?.textLabel?.text = group[indexPath.row].name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indexTwo = indexPath.row
        performSegue(withIdentifier: "showWeeks", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWeeks" {
            if let destinationVC = segue.destination as? WeeksViewController {
                destinationVC.group = self.group[indexTwo]
            }
        }
    }
}
