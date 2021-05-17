//
//  ViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 12/05/21.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    @IBAction func buttonEntrar(_ sender: Any) {
        let login = LoginModel(email: emailTextField.text!, password: passwordTextField.text!)
        
        var loginViewModel = LoginViewModel(loginModel: login)
        
            
        }

        
    }
    
    @IBAction func buttoCriarConta(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

