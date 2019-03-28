//
//  RegisterModel.swift
//  AlertProject
//
//  Created by Mesut Öztürk on 28.03.2019.
//  Copyright © 2019 Mesut Öztürk. All rights reserved.
//

import UIKit

class RegisterModel: NSObject {
    var UserName = ""
    var Password = ""
    var ConfirmPassword = ""
    
    var isValid : Bool {
        get {
            return validate().0
        }}
    
    func validate() -> (Bool, String) {
        var message = "";
        var isValid = true
        if self.UserName.count == 0 {
            message += "Kullanıcı adı boş geçilemez \n"
            isValid = false
        }
        else if checkRange(body: UserName, min: 3, max: 16) {
            message += "Kullanıcı adı 3 ile 16 karakter arasında olmalıdır \n"
            isValid = false
        }
        if self.Password.count == 0 {
            message += "Şifreyi boş bırakamazsınız \n"
            isValid = false
        }
        else if(checkRange(body: Password, min: 6, max: 18)){
            message += "Şifre 6-18 karakter aralığında olmalıdır \n"
            isValid = false
        }
        if self.ConfirmPassword.count == 0 {
            message += "Şifrenizi onaylayınız \n"
            isValid = false
        }
        else if self.Password != self.ConfirmPassword{
            message += "Şifreleriniz uyuşmuyor"
            isValid = false
        }
        
        
        return (isValid,message)
    }
    
    private func checkRange(body: String, min: Int, max: Int) -> Bool {
        let result = body.count < min || body.count > max
        return result
    }
}
