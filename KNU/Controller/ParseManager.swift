//
//  ParseManager.swift
//  KNU
//
//  Created by Иван on 20.03.18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import Foundation
import Parse

class Facultie {
    let name: String
    let courses: PFRelation<PFObject>
    let groups: PFRelation<PFObject>
    
    init(name: String, courses: PFRelation<PFObject> , groups: PFRelation<PFObject>) {
        self.name = name
        self.courses = courses
        self.groups = groups
    }
}

class ParseManager {
    static func getFaculties(completion: @escaping (_ faculties: [Facultie]) -> () ) {
        
        let query = PFQuery(className: "Faculties")
        query.whereKeyExists("name")
        query.findObjectsInBackground { objects, error in
            if let unwrappedError = error {
                print(unwrappedError)
            }
            
            if let unwrappedObjects = objects {
                let result = unwrappedObjects.map({ object -> Facultie in
                    let relation = object.relation(forKey: "courses")
                    return Facultie(name: object["name"] as! String, courses: relation, groups: relation)
                })
                completion(result)
            }
        }
    }
    
    static func getCourses(forRelarion: PFRelation<PFObject>, completion: @escaping ( _ courses: [Course]) -> ()) {
        let relationQuery = forRelarion.query()
        relationQuery.findObjectsInBackground(block: { objects, error in
            if let unwrappedObjects = objects {
                let result = unwrappedObjects.map({ object -> Course in
                    let relation = object.relation(forKey: "groups")
                    return Course(name: object["name"] as! String, groups: relation)
                })
                completion(result)
            }
        })
    }
    
    static func getGroups(forRelarion: PFRelation<PFObject>, completion: @escaping ( _ group: [Group] ) -> ()) {
        let relationQuery = forRelarion.query()
        relationQuery.findObjectsInBackground(block: { objects, error in
            if let unwrappedObjects = objects {
                let results = unwrappedObjects.map({ object -> Group in
                    return Group(name: object["name"]! as! String,
                                 UpMonday: object["UpMonday"]! as! String,
                                 UpTuesday: object["UpTuesday"]! as! String,
                                 UpWednesday: object["UpWednesday"]! as! String,
                                 UpThursday: object["UpThursday"]! as! String,
                                 UpFriday: object["UpFriday"]! as! String,
                                 downMonday: object["downMonday"]! as! String,
                                 downTuesday: object["downTuesday"]! as! String,
                                 downWednesday: object["downWednesday"]! as! String,
                                 downThursday: object["downThursday"]! as! String,
                                 downFriday: object["downFriday"]! as! String)
                })
                completion(results)
            }
        })
        
            }
}
    



