//
//  CartViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 13.12.2023.
//

import UIKit

class CartViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var applyView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        applyView.layer.cornerRadius = 30
        let lightGreenishGrayColor = UIColor(red: 236/255, green: 241/255, blue: 240/255, alpha: 1.0)
        applyView.layer.borderColor = lightGreenishGrayColor.cgColor
        applyView.layer.borderWidth = 1.0

    }
    

  
}
extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as? CartCell
       
        return cell!
    }
}

class CartCell: UITableViewCell {
    
    @IBOutlet weak var imagev1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imagev1.layer.cornerRadius = 20
    }
    
}
