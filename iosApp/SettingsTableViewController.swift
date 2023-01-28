 //
//  SettingsTableViewController.swift
//  iosApp
//
//  Created by new on 28/1/23.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    let testString = "testString"
    let nameKey = "nameKey"
    let soundKey = "soundKey"
    let volumeKey = "volumeKey"

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var soundSwitch: UISwitch!
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSetting()
             
    }
    
    func loadSetting() {
        if let name = UserDefaults.standard.string(forKey: nameKey) {
            nameField.text = name
        }
        soundSwitch.isOn = UserDefaults.standard.bool(forKey: soundKey)
        volumeSlider.value = UserDefaults.standard.float(forKey: volumeKey)
    }

   
    @IBAction func changeNameAction(_ sender: UITextField) {
        if(sender.text != nil){
            UserDefaults.standard.set(sender.text!, forKey: nameKey)
        }
    }
    
    @IBAction func soundAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: soundKey)
        
    }
    
    @IBAction func volumeAction(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: volumeKey)
        
    }
    
    
}
