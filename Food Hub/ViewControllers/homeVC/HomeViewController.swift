//
//  HomeViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 7.12.2023.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var deliverAdressLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var menuButton: UIButton!
    //collection view cell
    var foods = ["Burger", "Donat", "Pizza", "Mexican", "Asian", "Burger", "Donat", "Pizza", "Mexican", "Asian"]
    var foodsImages = ["Burger", "Donat", "Pizza", "Mexican", "Asian", "Burger", "Donat", "Pizza", "Mexican", "Asian"]
    //second collection veiw cell
    var rest = ["McDonald’s", "Dominos", "McDonald’s", "Dominos"]
    var restImages = ["Burger2", "Donat2", "Burger2", "Donat2"]
    //third items
    var popular = ["1", "2", "1", "2"]
    
    var selectedIndexPath: IndexPath?
    
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

/// Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            cell1.setupCollectionView()
            return cell1
        } else if indexPath.row == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell2.setupSecondCollectionView()
            return cell2
        } else if indexPath.row == 2 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "ThirdTableViewCell", for: indexPath) as! ThirdTableViewCell
            cell3.setupSecondCollectionView()
            return cell3
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120 // İlk hücrenin yüksekliği
        } else if indexPath.row == 1{
            return 275 // İkinci hücrenin yüksekliği
        } else {
            return 300 // üçüncü hücrenin yüksekliği
        }
    }


/// Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let tableViewCell = collectionView.superview?.superview as? TableViewCell {
            if collectionView == tableViewCell.collectionV1 {
                return foods.count
            }
        } else if let secondTableViewCell = collectionView.superview?.superview as? SecondTableViewCell {
            if collectionView == secondTableViewCell.collectionV2 {
                return rest.count
            }
        } else if let thirdTableViewCell = collectionView.superview?.superview as? ThirdTableViewCell {
            if collectionView == thirdTableViewCell.collectionV3 {
                return popular.count
            }
        }
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let tableViewCell = collectionView.superview?.superview as? TableViewCell {
            let accessV1 = tableViewCell.collectionV1
            if (collectionView == accessV1) {
                let cell1 = accessV1!.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
                
                cell1?.titleLabel?.text = foods[indexPath.row] //cannot see label in List
                cell1?.imageV1.image = UIImage(named: foodsImages[indexPath.row])
                
                return cell1!
            }
        } else if let secondTableViewCell = collectionView.superview?.superview as? SecondTableViewCell {
            let accessV2 = secondTableViewCell.collectionV2
            if (collectionView == accessV2) {
                let cell2 = accessV2!.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as? SecondCollectionViewCell
                
                cell2?.titleLabel?.text = rest[indexPath.row] //cannot see label in List
                cell2?.imageV2.image = UIImage(named: restImages[indexPath.row])
                
                return cell2!
            }
        } else if let thirdTableViewCell = collectionView.superview?.superview as? ThirdTableViewCell {
            let accessV3 = thirdTableViewCell.collectionV3
            if (collectionView == accessV3) {
                let cell3 = accessV3!.dequeueReusableCell(withReuseIdentifier: "ThirdCollectionViewCell", for: indexPath) as? ThirdCollectionViewCell
                
                cell3?.imageV2?.image = UIImage(named: popular[indexPath.row])
                
                return cell3!
            }
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
                let hexColor = 0xFE724C
                let red = CGFloat((hexColor & 0xFF0000) >> 16) / 255.0
                let green = CGFloat((hexColor & 0x00FF00) >> 8) / 255.0
                let blue = CGFloat(hexColor & 0x0000FF) / 255.0

                let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)

                // Change the background color to orange when selected
                cell.backgroundV1.backgroundColor = color
                cell.titleLabel.textColor = .white
                

                selectedIndexPath = indexPath
            }
        }
        
        func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
            if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
                // Change the background color back to the original color when deselected
                cell.backgroundV1.backgroundColor = .white
                cell.titleLabel.textColor = .darkGray
               
                selectedIndexPath = nil
            }
        }
   

}
