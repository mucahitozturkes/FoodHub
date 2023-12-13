//
//  PopularViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 13.12.2023.
//

import UIKit

class PopularViewController: UIViewController {

    @IBOutlet weak var backButtonV: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Chicken Hawaiian", "Chicken Hawaiian", "Chicken Hawaiian", "Chicken Hawaiian"]
    var photos = ["cell1", "cell2", "cell1", "cell2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonV.layer.shadowColor = UIColor.lightGray.cgColor
        backButtonV.layer.shadowOffset = CGSize(width: 0, height: 3)
        backButtonV.layer.shadowOpacity = 0.1// Increase opacity for a more pronounced shadow
        backButtonV.layer.shadowRadius = 4.0 // Increase radius for a larger shadow
     
    }
    
    @IBAction func backButtonPRessed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}

extension PopularViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCell", for: indexPath) as? PopularCell
        cell?.textLAbel?.text = names[indexPath.row]
        cell?.images?.image = UIImage(named: photos[indexPath.row])
        return cell!
    }
    
    
    
}
 
class PopularCell: UITableViewCell {
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
       
        
        starV.layer.shadowColor = UIColor.black.cgColor
        starV.layer.shadowOffset = CGSize(width: 0, height: 5)
        starV.layer.shadowOpacity = 1// Increase opacity for a more pronounced shadow
        starV.layer.shadowRadius = 6.0 // Increase radius for a larger shadow
        starV.layer.cornerRadius = 15
        starV.layer.masksToBounds = true
    }
}
