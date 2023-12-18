//
//  AddCartViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 12.12.2023.
//

import UIKit

class AddCartViewController: UIViewController {

    @IBOutlet weak var backBuıttonV: UIButton!
    @IBOutlet weak var imageV: UIImageView!
 
    @IBOutlet weak var heartV: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupShadows()
    }
    func setShadowButtons() {
        backBuıttonV.layer.shadowColor = UIColor.lightGray.cgColor
        backBuıttonV.layer.shadowOffset = CGSize(width: 0, height: 3)
        backBuıttonV.layer.shadowOpacity = 0.1// Increase opacity for a more pronounced shadow
        backBuıttonV.layer.shadowRadius = 4.0 // Increase radius for a larger shadow
    }
    @IBAction func backButtonPRessed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func setupShadows() {
        heartV.layer.cornerRadius = 20
        heartV.layer.masksToBounds = true
        imageV.layer.cornerRadius = 20
        imageV.layer.masksToBounds = true
    }

}
