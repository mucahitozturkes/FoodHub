//
//  TableViewCell.swift
//  Food Hub
//
//  Created by mücahit öztürk on 11.12.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var collectionV1: UICollectionView!
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
       setupCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
           func setupCollectionView() {
               collectionV1.register(CollectionViewCell.self, forCellWithReuseIdentifier: "SecondCollectionViewCell")

           }
}
