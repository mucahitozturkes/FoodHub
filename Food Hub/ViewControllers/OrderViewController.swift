//
//  OrderViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 13.12.2023.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var segmentV: UIView!
    var images = ["jimmy", "subway", "jimmy", "subway"]
    var imagesFirst = ["starbuck"]
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentV.layer.cornerRadius = 30
        let lightGreenishGrayColor = UIColor(red: 236/255, green: 241/255, blue: 240/255, alpha: 1.0)
        segmentV.layer.borderColor = lightGreenishGrayColor.cgColor
        segmentV.layer.borderWidth = 1.0
        
        updateButtonAppearance(selectedButton: button1)
        button1.layer.cornerRadius = 23
        button2.layer.cornerRadius = 23
        profileImage.layer.cornerRadius = 12
        backButton.layer.shadowColor = UIColor.lightGray.cgColor
        backButton.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButton.layer.shadowOpacity = 0.2
        backButton.layer.shadowRadius = 8.0
        backButton.layer.masksToBounds = false
      // tableView.register(OrderCell.self, forCellReuseIdentifier: "OrderCell")
       // tableView.register(OrderCell2.self, forCellReuseIdentifier: "OrderCell2")

    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
    }
    @IBAction func segment1(_ sender: UIButton) {
        updateButtonAppearance(selectedButton: button1)
    }

    @IBAction func segment2(_ sender: UIButton) {
        updateButtonAppearance(selectedButton: button2)
    }
    func updateButtonAppearance(selectedButton: UIButton) {
           let defaultTextColor = UIColor.orange
           let defaultBackgroundColor = UIColor.white

           let selectedTextColor = UIColor.white
           let selectedBackgroundColor = UIColor.orange

           UIView.animate(withDuration: 0.3, animations: {
               // Animasyonlu geçiş
               selectedButton.setTitleColor(selectedTextColor, for: .normal)
               selectedButton.backgroundColor = selectedBackgroundColor

               // Diğer butonları eski haline getir
               if selectedButton == self.button1 {
                   self.button2.setTitleColor(defaultTextColor, for: .normal)
                   self.button2.backgroundColor = defaultBackgroundColor
               } else {
                   self.button1.setTitleColor(defaultTextColor, for: .normal)
                   self.button1.backgroundColor = defaultBackgroundColor
               }
           })
       }

}

extension OrderViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
            return imagesFirst.count + images.count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath) as? OrderCell {
                cell.imageImage.image = UIImage(named: imagesFirst[0])
                return cell
            }
        } else if indexPath.row >= 1 && indexPath.row <= images.count {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell2", for: indexPath) as? OrderCell2 {
                cell.imageImage.image = UIImage(named: images[indexPath.row - 1])
                return cell
            }
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 250
        } else if indexPath.row >= 1 && indexPath.row <= images.count {
            return 170
        }
        return 250
    }
}



class OrderCell: UITableViewCell {
    
    @IBOutlet weak var imageImage: UIImageView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var backgroundV: UIView!
    @IBOutlet weak var imageV1: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageV1.layer.cornerRadius = 12
        imageV1.layer.shadowColor = UIColor.lightGray.cgColor
        imageV1.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        imageV1.layer.shadowOpacity = 0.2
        imageV1.layer.shadowRadius = 7.0
        imageV1.layer.masksToBounds = false
        
        backgroundV.layer.cornerRadius = 12
        backgroundV.layer.shadowColor = UIColor.lightGray.cgColor
        backgroundV.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backgroundV.layer.shadowOpacity = 0.2
        backgroundV.layer.shadowRadius = 5.0
        backgroundV.layer.masksToBounds = false
        
        cancelButton.layer.cornerRadius = 12
        cancelButton.layer.shadowColor = UIColor.lightGray.cgColor
        cancelButton.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        cancelButton.layer.shadowOpacity = 0.1
        cancelButton.layer.shadowRadius = 3.0
        cancelButton.layer.masksToBounds = false
    }
    
}

class OrderCell2: UITableViewCell {
    
    @IBOutlet weak var rateButton: UIButton!
    
    @IBOutlet weak var lastOrderLabel: UILabel!
    @IBOutlet weak var imageImage: UIImageView!
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var imageV1: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageV1.layer.cornerRadius = 12
        imageV1.layer.shadowColor = UIColor.lightGray.cgColor
        imageV1.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        imageV1.layer.shadowOpacity = 0.2
        imageV1.layer.shadowRadius = 7.0
        imageV1.layer.masksToBounds = false
        
        background.layer.cornerRadius = 12
        background.layer.shadowColor = UIColor.lightGray.cgColor
        background.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        background.layer.shadowOpacity = 0.2
        background.layer.shadowRadius = 5.0
        background.layer.masksToBounds = false
        
        rateButton.layer.cornerRadius = 12
        rateButton.layer.shadowColor = UIColor.lightGray.cgColor
        rateButton.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        rateButton.layer.shadowOpacity = 0.1
        rateButton.layer.shadowRadius = 3.0
        rateButton.layer.masksToBounds = false
    }
    
}
