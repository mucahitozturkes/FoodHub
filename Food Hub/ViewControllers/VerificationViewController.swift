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
    
    // Enumeration for TextField tags
    enum TextFieldTag: Int {
        case textfield1 = 0
        case textfield2
        case textfield3
        case textfield4
    }

    
    override func viewDidLoad() {
          super.viewDidLoad()
          setupUI()
          setupTextFields()
      }
    
    func setupUI() {
            skipButtonUI()
        }

    func setupTextFields() {
        let textFields: [UITextField] = [textfield1, textfield2, textfield3, textfield4]

        for (index, textField) in textFields.enumerated() {
            textField.delegate = self
            textField.tag = index
        }


        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGesture)
    }



     @objc func handleTap() {
         view.endEditing(true)
     }

     func resetTextFieldStyles() {
         for textField in [textfield1, textfield2, textfield3, textfield4] {
             textField?.layer.borderColor = nil
             textField?.layer.borderWidth = 0.0
         }
     }

     func setActiveTextFieldStyle(_ textField: UITextField) {
         textField.layer.borderColor = customColor.cgColor
         textField.layer.borderWidth = 1.0
     }

     func textFieldDidBeginEditing(_ textField: UITextField) {
         setActiveTextFieldStyle(textField)
         selectedTextField = textField
         // Clear the text when the text field is selected
            textField.text = ""
     }

     func textFieldDidEndEditing(_ textField: UITextField) {
         resetTextFieldStyles()
         selectedTextField = nil
     }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Allow only numeric characters
        let allowedCharacterSet = CharacterSet(charactersIn: "0123456789")
        let stringCharacterSet = CharacterSet(charactersIn: string)

        if stringCharacterSet.isSubset(of: allowedCharacterSet) {
            // Check if the new length will be 1, otherwise, return false
            let currentText = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
            
            if currentText.count == 1 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    // Move to the next text field if available
                    if let nextTextField = self.view.viewWithTag(textField.tag + 1) as? UITextField {
                        nextTextField.becomeFirstResponder()
                    } else {
                        textField.resignFirstResponder() // Dismiss the keyboard if it's the last text field
                    }
                }
                return true
            }
        }

        return false
    }









     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         if let nextTextField = view.viewWithTag(textField.tag + 1) as? UITextField {
             nextTextField.becomeFirstResponder()
         } else {
             textField.resignFirstResponder()
         }
         return true
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
