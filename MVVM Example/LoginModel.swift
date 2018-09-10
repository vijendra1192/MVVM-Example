//
//  LoginModel.swift
//  MVVM Example
//
//  Created by Vijendra  on 02/09/18.
//  Copyright © 2018 Vijendra . All rights reserved.
//

import Foundation



protocol LoginModel {
    func loginValidation(mobileNo:String,password:String,completionBlock:(_ responseDict : Dictionary<String, Any>) -> ())
}



class ModelInfo : NSObject {
    
    
    
    func loginValidation(mobileNo: String, password: String, completionBlock: @escaping (_ resDict:Dictionary<String, Any>) -> ()) {
        
        if mobileNo == "vijendra" || password == "12345678"
        {
            let resDic = ["Status":true]
            completionBlock(resDic)
            print("res dictt \(resDic)")
        }
        else
        {
            let resDic = ["Status":false]
            completionBlock(resDic)
            print("res dict false \(resDic)")
        }
        
    }
    
    
}
