//
//  AppTableViewCell.swift
//  KNU
//
//  Created by Иван on 27.05.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class AppTableViewCell: UITableViewCell,UIScrollViewDelegate {
    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    
    var app: App!{
        didSet{
            self.uptadeUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.scroll.minimumZoomScale = 1.0
        self.scroll.maximumZoomScale = 6.0
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return appImageView
    }
    
    func uptadeUI(){
        appImageView.image = UIImage(named: app.imageName)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

class firebaseCell: UITableViewCell {
    
    @IBOutlet weak var firebaseImage: UIImageView!
    
}

