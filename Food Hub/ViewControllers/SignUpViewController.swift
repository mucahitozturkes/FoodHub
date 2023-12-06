//
//  SignUpViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 6.12.2023.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var nameTextFieald: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    let customColor = UIColor(hex: 0xFF7252)
    var selectedTextField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

       skipButtonUI()
        passwordTextfield.delegate = self
        emailTextfield.delegate = self
        nameTextFieald.delegate = self
        
        nameTextFieald.tag = 0
        emailTextfield.tag = 1
        passwordTextfield.tag = 2
        
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
extension UIColor {
    convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
