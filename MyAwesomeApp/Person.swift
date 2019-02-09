//
//  Person.swift
//  MyAwesomeApp
//
//  Created by Divine Dube on 2019/02/08.
//  Copyright © 2019 Divine Dube. All rights reserved.
//

import UIKit

class Person {
    var name: String
    var photo: UIImage?
    var rating: Int
    var distance: Int
    
    init?(name: String, photo: UIImage?, rating: Int, distance: Int) {
        
        if name.isEmpty || rating < 0  {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
        self.distance = distance
    }

}
