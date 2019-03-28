//
//  ViewController.swift
//  AlertProject
//
//  Created by Mesut Öztürk on 28.03.2019.
//  Copyright © 2019 Mesut Öztürk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    var registerModel = RegisterModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error", message: "Kullanıcı adı hatalı", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)
        */
        registerModel = RegisterModel()
        registerModel.UserName = txtUsername.text!
        registerModel.Password = txtPassword.text!
        registerModel.ConfirmPassword = txtConfirmPassword.text!
        
        let result = registerModel.validate()
        if !result.0 {
            let alert = UIAlertController(title: "Error", message: result.1, preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
        }else {
            let alert = UIAlertController(title: "Kayıt", message: "Kayıt işlemi başarılı", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

