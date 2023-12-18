//
//  ThirdTableViewCell.swift
//  Food Hub
//
//  Created by mücahit öztürk on 12.12.2023.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionV3: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupSecondCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupSecondCollectionView() {
        collectionV3.register(ThirdCollectionViewCell.self, forCellWithReuseIdentifier: "SecondCollectionViewCell")
    }
}

