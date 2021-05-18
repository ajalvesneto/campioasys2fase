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
    @IBOutlet weak var errormsgcredenciaisLabel: UILabel!
    @IBOutlet weak var errormsgsenhaLabel: UILabel!
    
    var loginViewModel = LoginViewModel()
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Actions
    @IBAction func buttonEntrar(_ sender: Any) {
        if (passwordTextField.text == "") {
            exibeErro(self.errormsgsenhaLabel, false)
            return
        }else{
            exibeErro(self.errormsgsenhaLabel, true)
        }
        
        let parameters = ["email": "\(emailTextField.text!)", "password": "\(passwordTextField.text!)"]
        
        loginViewModel.doLogin(parameters: parameters) { result, error  in
            if (result){
                print("Logou")
            }else{
                self.exibeErro(self.errormsgcredenciaisLabel, false)
            }
        }
    }
    
    
    @IBAction func editEmailTextField(_ sender: Any) {
       configTextField(emailTextField)

    }
    
    @IBAction func editPasswordTextField(_ sender: Any) {
        configTextField(passwordTextField)


    }
    
    
    
    
    // MARK: - Methods
    
    func exibeErro(_ label : UILabel, _ valor : Bool){
        label.isHidden = valor
    }
    
    func configTextField( _ textField: UITextField){
        textField.backgroundColor = .white
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    
    
    
    
    
}
