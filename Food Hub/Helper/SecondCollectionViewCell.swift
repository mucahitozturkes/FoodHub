//
//  SecondCollectionViewCell.swift
//  Food Hub
//
//  Created by mücahit öztürk on 11.12.2023.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backView3: UIView!
    @IBOutlet weak var backView2: UIView!
    @IBOutlet weak var backview1: UIView!
    @IBOutlet weak var heartView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageV2: UIImageView!
    @IBOutlet weak var backgroundV2: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        // Add a more pronounced shadow
        backgroundV2.layer.shadowColor = UIColor.lightGray.cgColor
        backgroundV2.layer.shadowOffset = CGSize(width: 0, height: 3)
        backgroundV2.layer.shadowOpacity = 0.2// Increase opacity for a more pronounced shadow
        backgroundV2.layer.shadowRadius = 4.0 // Increase radius for a larger shadow
        
        // Round the corners
        backgroundV2.layer.cornerRadius = 30
        
        // Round the corners of the image view
        imageV2.layer.cornerRadius = 25
        imageV2.layer.masksToBounds = true
        
        backview1.layer.cornerRadius = 5
        backview1.layer.masksToBounds = true
        backView2.layer.cornerRadius = 5
        backView2.layer.masksToBounds = true
        backView3.layer.cornerRadius = 5
        backView3.layer.masksToBounds = true
        
        heartView.layer.cornerRadius = 20
        heartView.layer.masksToBounds = true
    }
}
