//
//  LoginViewModel.swift
//  MVVM Example
//
//  Created by Vijendra  on 02/09/18.
//  Copyright © 2018 Vijendra . All rights reserved.
//

import Foundation

class LoginViewModel : NSObject
{
    var name : String?
    var password : String?
    var model_ : ModelInfo! = ModelInfo()
    var responseDic : Dictionary<String, Any>?
    var loginData : LoginDataStruct?
    var saveResData = Array<Any>()
    
    
    init(mobileNo:String,password:String) {
        self.name = mobileNo
        self.password = password
    }
    
    func logindemo(completionBlock:@escaping (_ isSuccess:Bool) -> ())
    {
        model_?.loginValidation(mobileNo: self.name!, password: self.password!, completionBlock: { (resDic) in
            
            if resDic["Status"] as! Bool == true
            {
                completionBlock(true)
                self.responseDic = resDic
            }
            else
            {
                completionBlock(false)
                self.responseDic = resDic
            }
            self.saveDictValue()
        })
    }
    
    func saveDictValue() {
        print("dictionary data is \(self.responseDic)")
        
        if responseDic!["Status"] as! Bool == true
        {
            loginData?.mobileNo = responseDic!["mobileNo"] as? String
            loginData?.password = responseDic!["password"] as? String
            loginData?.status = responseDic!["Status"] as? Bool
            
            saveResData.append(loginData)
        }
        else
        {
            
        }
        
    }
}
