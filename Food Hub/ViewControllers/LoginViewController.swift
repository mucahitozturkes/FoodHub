//
//  LoginViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 6.12.2023.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var googleButtton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      skipButtonUI()
    }
    

    func skipButtonUI() {
        
        backButton?.layer.shadowColor = UIColor.lightGray.cgColor
        backButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButton?.layer.shadowOpacity = 0.1
        backButton?.layer.shadowRadius = 8.0
        backButton?.layer.masksToBounds = false
        
        LoginButton?.layer.shadowColor = UIColor.lightGray.cgColor
        LoginButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        LoginButton?.layer.shadowOpacity = 0.1
        LoginButton?.layer.shadowRadius = 8.0
        LoginButton?.layer.masksToBounds = false
        
        facebookButton?.layer.shadowColor = UIColor.lightGray.cgColor
        facebookButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        facebookButton?.layer.shadowOpacity = 0.1
        facebookButton?.layer.shadowRadius = 8.0
        facebookButton?.layer.masksToBounds = false
        
        googleButtton?.layer.shadowColor = UIColor.lightGray.cgColor
        googleButtton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        googleButtton?.layer.shadowOpacity = 0.1
        googleButtton?.layer.shadowRadius = 8.0
        googleButtton?.layer.masksToBounds = false
        
        

    }
}
