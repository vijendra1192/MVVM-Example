//
//  LoginModel.swift
//  MVVM Example
//
//  Created by Vijendra  on 02/09/18.
//  Copyright © 2018 Vijendra . All rights reserved.
//

import Foundation

class ModelInfo : NSObject
{
    func loginValidation(mobileNo: String, password: String, completionBlock: @escaping (_ resDict:Dictionary<String, Any>) -> ())
    {
        let resDic = ["Status":true,"mobileNo":mobileNo,"password":password] as [String : Any]
        completionBlock(resDic)
        return
        
        
        if mobileNo == "vijendra" || password == "12345678"
        {
            let resDic = ["Status":true,"mobileNo":mobileNo,"password":password] as [String : Any]
            completionBlock(resDic)
        }
        else
        {
            let resDic = ["Status":false]
            completionBlock(resDic)
        }
    }
}
