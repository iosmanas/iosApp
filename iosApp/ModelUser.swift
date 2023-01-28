//
//  ModelUser.swift
//  iosApp
//
//  Created by new on 29/1/23.
//

import Foundation
import UIKit

class ModelUser {
    var users = [[User]]()
    
    init() {
        setUp()
    }
    func setUp() {
        let man1 = User(name: "Manas", city: "Bishkek", avatar: UIImage(named: "steve")!, gender: .male)
        let man2 = User(name: "Semetey", city: "Bishkek", avatar: UIImage(named: "steve")!, gender: .male)
        
        let manArray = [man1, man2]
        
        
        let woman1 = User(name: "Adinay", city: "Bishkek", avatar: UIImage(named: "woman")!, gender: .female)
        let woman2 = User(name: "Saikal", city: "Bishkek", avatar: UIImage(named: "woman")!, gender: .female)
        
        let womanArray = [woman1, woman2]
        
        users.append(manArray)
        users.append(womanArray)
       
    }
}
