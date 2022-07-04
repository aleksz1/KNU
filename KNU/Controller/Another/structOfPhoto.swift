//
//  structOfPhoto.swift
//  KNU
//
//  Created by Иван on 27.05.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import Foundation
import UIKit

struct App {
    var imageName: String
}

class SessionImage {
    
    static let sharedInstance = [firstCoursePhoto.getAllAppsThird(), secondCoursePhoto.getAllAppsThird(), thirdCoursePhoto.getAllAppsThird(), fourCoursePhoto.getAllAppsThird()]
}

struct fourCoursePhoto {
    static func getAllAppsThird() -> [App] {
        return [
            App(imageName: "4-zalik-1"),
            App(imageName: "4-zalik-2"),
            App(imageName: "4-zalik-3"),
            App(imageName: "4-zalik-4"),
            App(imageName: "4-zalik-5"),
            App(imageName: "4-ekzam-1"),
            App(imageName: "4-ekzam-2"),
            App(imageName: "4-ekzam-3"),
        ]
    }
}
struct thirdCoursePhoto {
    static func getAllAppsThird() -> [App]{
        return[
        App(imageName: "3-kurs-1"),
        App(imageName: "3-kurs-2"),
        App(imageName: "3-kurs-3"),
        App(imageName: "3-kurs-4"),
        App(imageName: "3-kurs-5")
        ]
    }
}

struct firstCoursePhoto {
    static func getAllAppsThird() -> [App]{
        return[
            App(imageName: "1 kurs-1"),
            App(imageName: "1 kurs-2"),
            App(imageName: "1 kurs-3"),
            App(imageName: "1 kurs-4"),
            App(imageName: "1 kurs-5")
        ]
    }
}

struct secondCoursePhoto {
    static func getAllAppsThird() -> [App]{
        return[
            App(imageName: "2-kurs-1"),
            App(imageName: "2-kurs-2"),
            App(imageName: "2-kurs-3"),
            App(imageName: "2-kurs-4"),
            App(imageName: "2-kurs-5")
        ]
    }
}

class TeacherTable {
    static var shared = Table()
}

struct Table {
    var weekDays = ["UpMonday": [DayTable?](),
                    "UpTuesday": [DayTable?](),
                    "UpWednesday": [DayTable](),
                    "UpThursday": [DayTable](),
                    "UpFriday": [DayTable](),]
}

struct DayTable {
    var classroom: String
    var pair: String
}



