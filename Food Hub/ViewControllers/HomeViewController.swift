//
//  HomeViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 7.12.2023.
//

import UIKit

class HomeViewController: UIViewController {

   
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var deliverAdressLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        skipButtonUI()
    }
    
    func skipButtonUI() {
        
       
        // Create an empty UIView
        let searchIconContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 36, height: 20)) // Increase the width to add 16 units of padding

        // Create and add the system icon
        if let searchImage = UIImage(systemName: "magnifyingglass") {
            let searchImageView = UIImageView(image: searchImage)
            searchImageView.tintColor = .darkGray
            searchIconContainerView.addSubview(searchImageView)
            
            // Set the position for the icon
            searchImageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                searchImageView.topAnchor.constraint(equalTo: searchIconContainerView.topAnchor),
                searchImageView.leadingAnchor.constraint(equalTo: searchIconContainerView.leadingAnchor, constant: 16), // 16 units of padding
                searchImageView.bottomAnchor.constraint(equalTo: searchIconContainerView.bottomAnchor),
                searchImageView.trailingAnchor.constraint(equalTo: searchIconContainerView.trailingAnchor)
            ])
        }

        // Place the UIView in the UITextField
        searchTextfield?.leftView = searchIconContainerView
        searchTextfield?.leftViewMode = .always



        
        filterButton?.layer.shadowColor = UIColor.lightGray.cgColor
        filterButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        filterButton?.layer.shadowOpacity = 0.2
        filterButton?.layer.shadowRadius = 8.0
        filterButton?.layer.masksToBounds = false
        
        searchTextfield?.layer.shadowColor = UIColor.lightGray.cgColor
        searchTextfield?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        searchTextfield?.layer.shadowOpacity = 0.2
        searchTextfield?.layer.shadowRadius = 8.0
        searchTextfield?.layer.masksToBounds = false
        
        menuButton?.layer.shadowColor = UIColor.lightGray.cgColor
        menuButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        menuButton?.layer.shadowOpacity = 0.2
        menuButton?.layer.shadowRadius = 8.0
        menuButton?.layer.masksToBounds = false
        
        profileImage?.layer.cornerRadius = 12
        profileImage?.layer.masksToBounds = true
        profileImage?.layer.shadowColor = UIColor.orange.cgColor
        profileImage?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        profileImage?.layer.shadowOpacity = 0.2
        profileImage?.layer.shadowRadius = 8.0
   
    }

}

class CVCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var imageLabel: UILabel!
}
