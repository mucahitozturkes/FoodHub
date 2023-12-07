//
//  registerViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 7.12.2023.
//

import UIKit

class registerViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var sendPassButton: UIButton!
    
    let customColor = UIColor(hex: 0xFF7252)
    var selectedTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skipButtonUI()
      
        textfield1.delegate = self
        textfield1.tag = 0
        
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
        
      
        
        sendPassButton?.layer.shadowColor = UIColor.lightGray.cgColor
        sendPassButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        sendPassButton?.layer.shadowOpacity = 0.2
        sendPassButton?.layer.shadowRadius = 8.0
        sendPassButton?.layer.masksToBounds = false
        
        backButton?.layer.shadowColor = UIColor.lightGray.cgColor
        backButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        backButton?.layer.shadowOpacity = 0.2
        backButton?.layer.shadowRadius = 8.0
        backButton?.layer.masksToBounds = false
        
        
        

    }

}
