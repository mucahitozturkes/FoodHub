//
//  SignUpViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 6.12.2023.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var nameTextFieald: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       skipButtonUI()
    }
    

    func skipButtonUI() {
   
        
        passwordTextfield?.layer.shadowColor = UIColor.lightGray.cgColor
        passwordTextfield?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        passwordTextfield?.layer.shadowOpacity = 0.1
        passwordTextfield?.layer.shadowRadius = 8.0
        passwordTextfield?.layer.masksToBounds = false
        
        emailTextfield?.layer.shadowColor = UIColor.lightGray.cgColor
        emailTextfield?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        emailTextfield?.layer.shadowOpacity = 0.1
        emailTextfield?.layer.shadowRadius = 8.0
        emailTextfield?.layer.masksToBounds = false
        
        nameTextFieald?.layer.shadowColor = UIColor.lightGray.cgColor
        nameTextFieald?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        nameTextFieald?.layer.shadowOpacity = 0.1
        nameTextFieald?.layer.shadowRadius = 8.0
        nameTextFieald?.layer.masksToBounds = false
        
        signUpButton?.layer.shadowColor = UIColor.lightGray.cgColor
        signUpButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        signUpButton?.layer.shadowOpacity = 0.1
        signUpButton?.layer.shadowRadius = 8.0
        signUpButton?.layer.masksToBounds = false
        
        facebookButton?.layer.shadowColor = UIColor.lightGray.cgColor
        facebookButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        facebookButton?.layer.shadowOpacity = 0.1
        facebookButton?.layer.shadowRadius = 8.0
        facebookButton?.layer.masksToBounds = false
        
        googleButton?.layer.shadowColor = UIColor.lightGray.cgColor
        googleButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        googleButton?.layer.shadowOpacity = 0.1
        googleButton?.layer.shadowRadius = 8.0
        googleButton?.layer.masksToBounds = false
        
    
        

    }

}
