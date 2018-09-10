//
//  ViewController.swift
//  MVVM Example
//
//  Created by Vijendra  on 02/09/18.
//  Copyright © 2018 Vijendra . All rights reserved.
//

import UIKit

struct LoginDataStruct {
    var mobileNo : String?
    var password : String?
    var status : Bool?
}



class ViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    var data_ : LoginDataStruct!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginPressed(_ sender: Any)
    {
        if (txtMobileNo.text?.count)! > 0 && (txtPassword.text?.count)! > 0
        {
            let viewModel_ = LoginViewModel(mobileNo: txtMobileNo.text!, password: txtPassword.text!)
            
            viewModel_.logindemo { (isTrue) in
                print("login response \(isTrue)")
            }
        }
        else
        {}
    }
    
    @IBAction func fetchPressed(_ sender: Any)
    {
        let model = LoginViewModel(mobileNo: "1", password: "1")
        
        print("fetch data \(model.saveResData)")
    }
}
