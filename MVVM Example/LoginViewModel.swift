//
//  LoginViewModel.swift
//  MVVM Example
//
//  Created by Vijendra  on 02/09/18.
//  Copyright © 2018 Vijendra . All rights reserved.
//

import Foundation

class LoginViewModel : NSObject {
    
    var name : String?
    var password : String?
    var model_ : ModelInfo! = ModelInfo()
    
    init(mobileNo:String,password:String) {
        self.name = mobileNo
        self.password = password
    }
    
    
    
    func logindemo(completionBlock:@escaping (_ isSuccess:Bool) -> ()) {
    
        model_?.loginValidation(mobileNo: self.name!, password: self.password!, completionBlock: { (resDic) in
            
            if resDic["Status"] as! Bool == true
            {
                completionBlock(true)
            }
            else
            {
                completionBlock(false)
            }
        })
        
    }
    
    
}
