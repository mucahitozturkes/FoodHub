//
//  ViewController.swift
//  Food Hub
//
//  Created by mücahit öztürk on 6.12.2023.
//

import UIKit

class ViewController: UIViewController {
  
  
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var skipGoogle: UIButton!
    @IBOutlet weak var skipFacebook: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skipButtonUI()
       
    }
   
    func skipButtonUI() {
        skipGoogle?.layer.shadowColor = UIColor.lightGray.cgColor
        skipGoogle?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        skipGoogle?.layer.shadowOpacity = 0.2
        skipGoogle?.layer.shadowRadius = 8.0
        skipGoogle?.layer.masksToBounds = false
        
        skipFacebook?.layer.shadowColor = UIColor.lightGray.cgColor
        skipFacebook?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        skipFacebook?.layer.shadowOpacity = 0.2
        skipFacebook?.layer.shadowRadius = 8.0
        skipFacebook?.layer.masksToBounds = false
        
        signUpButton?.layer.shadowColor = UIColor.lightGray.cgColor
        signUpButton?.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        signUpButton?.layer.shadowOpacity = 0.2
        signUpButton?.layer.shadowRadius = 8.0
        signUpButton?.layer.masksToBounds = false
     
        

    }
    

    
}

