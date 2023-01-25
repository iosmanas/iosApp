//
//  ViewController.swift
//  iosApp
//
//  Created by new on 25/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImage.layer.borderWidth = 3.0
        avatarImage.layer.borderColor = UIColor.lightGray.cgColor
        // Do any additional setup after loading the view.
    }


}

