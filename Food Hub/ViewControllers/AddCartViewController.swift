//
//  AddCartViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 12.12.2023.
//

import UIKit

class AddCartViewController: UIViewController {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var backButtonV: UIButton!
    @IBOutlet weak var heartV: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupShadows()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupShadows() {
        backButtonV?.layer.shadowColor = UIColor.lightGray.cgColor
        backButtonV?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButtonV?.layer.shadowOpacity = 0.2
        backButtonV?.layer.shadowRadius = 8.0
        backButtonV?.layer.masksToBounds = false
        
        heartV.layer.cornerRadius = 20
        heartV.layer.masksToBounds = true
        imageV.layer.cornerRadius = 20
        imageV.layer.masksToBounds = true
    }

}
