//
//  FullScreenCollectionViewCell.swift
//  iosApp
//
//  Created by new on 27/1/23.
//

import UIKit

class FullScreenCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var scrollView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
//        scrollView.delegate = self
    }

}
