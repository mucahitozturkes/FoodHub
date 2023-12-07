//
//  HomeViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 7.12.2023.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var deliverAdressLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var menuButton: UIButton!
    
    var foods = ["Burger", "Donat", "Pizza", "Mexican", "Asian", "Burger", "Donat", "Pizza", "Mexican", "Asian"]
    var foodsImages = ["Burger", "Donat", "Pizza", "Mexican", "Asian", "Burger", "Donat", "Pizza", "Mexican", "Asian"]
    
    
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
class Cell: UITableViewCell {
   
    
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CCell", for: indexPath) as! CCell
        cell.CVlabel.text = foods[indexPath.row]

        if let image = UIImage(named: foods[indexPath.row]) {
            cell.image.image = image
        } else {
            // Handle the case where the image cannot be loaded
        }

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: 120
            )
        }
}
class CCell: UICollectionViewCell {
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var CVlabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }

    func configureUI() {
        // Arkaplan görünümünün köşe yarıçapı ve gölge efekti
        // Arkaplan görünümünün köşe yarıçapı ve gölge efekti
               backgroundViewCell.layer.cornerRadius = 30.0
               backgroundViewCell.layer.masksToBounds = false
               backgroundViewCell.layer.shadowColor = UIColor.lightGray.cgColor
               backgroundViewCell.layer.shadowOffset = CGSize(width: 0, height: 0)
        backgroundViewCell.layer.shadowOpacity = 0.1
               backgroundViewCell.layer.shadowRadius = 8.0
               backgroundViewCell.layer.shadowPath = UIBezierPath(roundedRect: backgroundViewCell.bounds, cornerRadius: backgroundViewCell.layer.cornerRadius).cgPath

               // İmajın köşe yarıçapı ve gölge efekti
        image.layer.cornerRadius = 25.0
        image.layer.masksToBounds = true
     
    }

}
