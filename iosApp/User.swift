//
//  User.swift
//  iosApp
//
//  Created by new on 29/1/23.
//

import Foundation
import UIKit

enum Gender {
    case male
    case female
}


class User: NSObject {
    var name: String
    var city: String
    var avatar: UIImage
    var gender: Gender
    
    init(name: String, city: String, avatar: UIImage, gender: Gender) {
        self.name = name
        self.city = city
        self.avatar = avatar
        self.gender = gender
    }
}
