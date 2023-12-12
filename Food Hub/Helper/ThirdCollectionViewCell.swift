//
//  ThirdCollectionViewCell.swift
//  Food Hub
//
//  Created by mücahit öztürk on 11.12.2023.
//

import UIKit

class ThirdCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var startView: UIView!
    @IBOutlet weak var heartView: UIView!
    @IBOutlet weak var imageV2: UIImageView!
    @IBOutlet weak var backgroundV2: UIView!
    
    @IBOutlet weak var starView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        // Add a more pronounced shadow
        backgroundV2.layer.shadowColor = UIColor.lightGray.cgColor
        backgroundV2.layer.shadowOffset = CGSize(width: 0, height: 3)
        backgroundV2.layer.shadowOpacity = 0.1// Increase opacity for a more pronounced shadow
        backgroundV2.layer.shadowRadius = 4.0 // Increase radius for a larger shadow
        
        // Round the corners
        backgroundV2.layer.cornerRadius = 20
        
        // Round the corners of the image view
        imageV2.layer.cornerRadius =  20
        imageV2.layer.masksToBounds = true
        startView.layer.cornerRadius =  12
        startView.layer.masksToBounds = true
        
        starView.layer.cornerRadius =  12
        starView.layer.masksToBounds = true
        starView.layer.shadowColor = UIColor.lightGray.cgColor
        starView.layer.shadowOffset = CGSize(width: 0, height: 3)
        starView.layer.shadowOpacity = 1// Increase opacity for a more pronounced shadow
        starView.layer.shadowRadius = 8.0 // Increase radius for a larger shadow
        
        

        
        heartView.layer.cornerRadius = 20
        heartView.layer.masksToBounds = true
    }
}
