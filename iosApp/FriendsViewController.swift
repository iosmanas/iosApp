//
//  FriendsViewController.swift
//  iosApp
//
//  Created by new on 28/1/23.
//

import UIKit

class FriendsViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var modelUser = ModelUser()
    
    let cellID = "UserTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    

    

}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = modelUser.users[section]
        return section.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelUser.users.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Man"
        }else{
            return "Woman"
        }
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]

        
        cell.nameLabel.text = user.name
        cell.userImageView.image = user.avatar
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        
        let alert = UIAlertController(title: user.name, message: user.city, preferredStyle: .actionSheet)
        
        let profileAction = UIAlertAction(title: "Profile", style: .default) { (alert) in
            self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
        }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (alert) in
            self.modelUser.users[indexPath.section].remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        alert.addAction(profileAction)
        alert.addAction(deleteAction)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToProfile"{
            let vc = segue.destination as! UserViewController
            
            let indexPath = sender as! IndexPath
            
            
            let section = modelUser.users[indexPath.section]
            let user = section[indexPath.row]
            
            vc.user = user
            
        }
    }
     
}
