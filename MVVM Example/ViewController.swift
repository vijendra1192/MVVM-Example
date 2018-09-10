//
//  ViewController.swift
//  MVVM Example
//
//  Created by Vijendra  on 02/09/18.
//  Copyright © 2018 Vijendra . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginPressed(_ sender: Any)
    {
        if (txtMobileNo.text?.count)! > 0 && (txtPassword.text?.count)! > 0
        {
            var viewModel_ = LoginViewModel(mobileNo: txtMobileNo.text!, password: txtPassword.text!)
            
            
            viewModel_.logindemo { (isTrue) in
                print("login response \(isTrue)")
            }
            
            
            
        }
        else
        {
            
        }
    }
    
}

