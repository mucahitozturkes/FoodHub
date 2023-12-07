//
//  VerificationViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 7.12.2023.
//

import UIKit

class VerificationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield3: UITextField!
    @IBOutlet weak var textfield4: UITextField!
    
    let customColor = UIColor(hex: 0xFF7252)
    var selectedTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skipButtonUI()
        textfield1.delegate = self
        textfield2.delegate = self
        textfield3.delegate = self
        textfield4.delegate = self
        
        textfield1.tag = 0
        textfield2.tag = 1
        textfield3.tag = 2
        textfield4.tag = 3
        
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
        print("Re-send")
    }
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        }
    
    func skipButtonUI() {
        
        textfield1?.layer.shadowColor = UIColor.lightGray.cgColor
        textfield1?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        textfield1?.layer.shadowOpacity = 0.2
        textfield1?.layer.shadowRadius = 8.0
        textfield1?.layer.masksToBounds = false
        
        textfield2?.layer.shadowColor = UIColor.lightGray.cgColor
        textfield2?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        textfield2?.layer.shadowOpacity = 0.2
        textfield2?.layer.shadowRadius = 8.0
        textfield2?.layer.masksToBounds = false
        
        textfield3?.layer.shadowColor = UIColor.lightGray.cgColor
        textfield3?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        textfield3?.layer.shadowOpacity = 0.2
        textfield3?.layer.shadowRadius = 8.0
        textfield3?.layer.masksToBounds = false
        
        textfield4?.layer.shadowColor = UIColor.lightGray.cgColor
        textfield4?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        textfield4?.layer.shadowOpacity = 0.2
        textfield4?.layer.shadowRadius = 8.0
        textfield4?.layer.masksToBounds = false
        
        backButton?.layer.shadowColor = UIColor.lightGray.cgColor
        backButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButton?.layer.shadowOpacity = 0.2
        backButton?.layer.shadowRadius = 8.0
        backButton?.layer.masksToBounds = false
        
        
        

    }

  

}
