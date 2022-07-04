//
//  ShowPhotoOfSession.swift
//  KNU
//
//  Created by Иван on 05.06.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class ShowPhotoOfSession: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    var apps = fourCoursePhoto.getAllAppsThird()
    var selectedCourse = Int()

override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    tableView.estimatedRowHeight = 200
    tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension ShowPhotoOfSession : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let image = SessionImage.sharedInstance[selectedCourse]
        return image.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppCell") as! AppTableViewCell
        let image = SessionImage.sharedInstance[selectedCourse]
        cell.app = image[indexPath.row]
        return cell
    }
}

