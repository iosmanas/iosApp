//
//  UserViewController.swift
//  iosApp
//
//  Created by new on 29/1/23.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userCityLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = user.name
        userCityLabel.text = user.city
        userImageView.image = user.avatar

        // Do any additional setup after loading the view.
        
        userImageView.layer.borderWidth = 3.0
        
        if user.gender == .male{
            userImageView.layer.borderColor = UIColor.blue.cgColor
        }else{
            userImageView.layer.borderColor = UIColor.red.cgColor
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
