//
//  UserTableViewCell.swift
//  iosApp
//
//  Created by new on 28/1/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
