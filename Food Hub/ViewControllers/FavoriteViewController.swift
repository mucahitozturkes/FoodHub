//
//  FavoriteViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 14.12.2023.
//

import UIKit

class FavoriteViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var segmentV: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    var images = ["1", "2", "Burger2", "Donat2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.layer.cornerRadius = 23
        button2.layer.cornerRadius = 23
        profileImage.layer.cornerRadius = 12
        backButton.layer.shadowColor = UIColor.lightGray.cgColor
        backButton.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButton.layer.shadowOpacity = 0.2
        backButton.layer.shadowRadius = 8.0
        backButton.layer.masksToBounds = false
        updateButtonAppearance(selectedButton: button1)
        segmentV.layer.cornerRadius = 30
        let lightGreenishGrayColor = UIColor(red: 236/255, green: 241/255, blue: 240/255, alpha: 1.0)
        segmentV.layer.borderColor = lightGreenishGrayColor.cgColor
        segmentV.layer.borderWidth = 1.0
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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

extension FavoriteViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as? FavoriteCell else {
            return UITableViewCell()
        }

        cell.images.image = UIImage(named: images[indexPath.row])
        return cell
    }

}

class FavoriteCell: UITableViewCell {
    @IBOutlet weak var backgroundV1: UIView!
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var textLAbel: UILabel!
    
    @IBOutlet weak var starV: UIView!
    @IBOutlet weak var priceV: UIView!
    @IBOutlet weak var heartV: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        backgroundV1.layer.shadowColor = UIColor.lightGray.cgColor
        backgroundV1.layer.shadowOffset = CGSize(width: 0, height: 3)
        backgroundV1.layer.shadowOpacity = 0.1// Increase opacity for a more pronounced shadow
        backgroundV1.layer.shadowRadius = 4.0 // Increase radius for a larger shadow
        backgroundV1.layer.cornerRadius = 30
        heartV.layer.cornerRadius = 20
       
        priceV.layer.cornerRadius = 15
        images.layer.cornerRadius = 25
       
        
        starV.layer.shadowColor = UIColor.black.cgColor
        starV.layer.shadowOffset = CGSize(width: 0, height: 5)
        starV.layer.shadowOpacity = 1// Increase opacity for a more pronounced shadow
        starV.layer.shadowRadius = 6.0 // Increase radius for a larger shadow
        starV.layer.cornerRadius = 15
        starV.layer.masksToBounds = true
    }
}
