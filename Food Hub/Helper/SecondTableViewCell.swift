//
//  SecondTableViewCell.swift
//  Food Hub
//
//  Created by mücahit öztürk on 11.12.2023.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionV2: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       setupSecondCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
    //
            func setupSecondCollectionView() {
                collectionV2.register(SecondCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
            }
}
