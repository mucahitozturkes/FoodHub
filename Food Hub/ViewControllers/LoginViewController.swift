//
//  LoginViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 6.12.2023.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var googleButtton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    let customColor = UIColor(hex: 0xFF7252)
    var selectedTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        skipButtonUI()
        passwordTextfield.delegate = self
        emailTextfield.delegate = self
       
        
       
        emailTextfield.tag = 0
        passwordTextfield.tag = 1
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
                view.addGestureRecognizer(tapGesture)
    }
    @objc func handleTap() {
        // Boş bir yere tıklandığında klavyeyi kapat
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // Seçilen TextField'in sınır rengini değiştir
        selectedTextField = textField
        selectedTextField?.layer.borderColor = customColor.cgColor
        selectedTextField?.layer.borderWidth = 1.0
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        // Seçilen TextField'in sınır rengini eski haline getir
        selectedTextField?.layer.borderColor = nil
        selectedTextField?.layer.borderWidth = 0.0
        selectedTextField = nil
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        }
    
    func skipButtonUI() {
        
        backButton?.layer.shadowColor = UIColor.lightGray.cgColor
        backButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButton?.layer.shadowOpacity = 0.2
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
        
        emailTextfield?.layer.shadowColor = UIColor.lightGray.cgColor
        emailTextfield?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        emailTextfield?.layer.shadowOpacity = 0.1
        emailTextfield?.layer.shadowRadius = 8.0
        emailTextfield?.layer.masksToBounds = false
        
        passwordTextfield?.layer.shadowColor = UIColor.lightGray.cgColor
        passwordTextfield?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        passwordTextfield?.layer.shadowOpacity = 0.1
        passwordTextfield?.layer.shadowRadius = 8.0
        passwordTextfield?.layer.masksToBounds = false
        
        

    }
}

