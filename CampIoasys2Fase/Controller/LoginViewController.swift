//
//  ViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 12/05/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errormsgTextField: UILabel!
    
    
    var loginViewModel = LoginViewModel()
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Actions
    @IBAction func buttonEntrar(_ sender: Any) {
        let parameters = ["email": "\(emailTextField.text!)", "password": "\(passwordTextField.text!)"]
        
        loginViewModel.doLogin(parameters: parameters) { result, error  in
            if (result){
                print("Logou")
            }else{
                self.exibeErro()
            }
        }
    }
    
    
    // MARK: - Methods
    
    func exibeErro(){
        errormsgTextField.isHidden = false
    }
    
    
    
    
    
}
