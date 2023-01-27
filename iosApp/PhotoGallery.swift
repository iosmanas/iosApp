//
//  PhotoGallery.swift
//  iosApp
//
//  Created by new on 25/1/23.
//

import Foundation
import UIKit

class PhotoGallery{
    var images = [UIImage]()
    
    init() {
        setupGallery()
    }
    
    func setupGallery(){
        for i in 0...5{
            let image = UIImage(named: "image\(i)")!
            images.append(image)
        }
    }
}
