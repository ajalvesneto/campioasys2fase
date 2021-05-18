//
//  ViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 12/05/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Atributes
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var loginViewModel = LoginViewModel()
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Methods
    @IBAction func buttonEntrar(_ sender: Any) {
        let parameters = ["email": "\(emailTextField.text!)", "password": "\(passwordTextField.text!)"]
        
       
        
        loginViewModel.doLogin(parameters: parameters) { result, error  in
            
        }
    }
    
    @IBAction func buttoCriarConta(_ sender: Any) {
    }
    
    
}
