//
//  ViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 12/05/21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errormsgcredenciaisLabel: UILabel!
    @IBOutlet weak var errormsgsenhaLabel: UILabel!
    
    @IBOutlet weak var spinnerIndicator: UIActivityIndicatorView!
    
    
    var loginViewModel = LoginViewModel()
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = .white
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    
    // MARK: - IBActions
    @IBAction func buttonEntrar(_ sender: Any) {
        if (passwordTextField.text == "") {
            exibeErro(self.errormsgsenhaLabel, false)
            return
        }else{
            exibeErro(self.errormsgsenhaLabel, true)
        }
        
        let parameters = ["email": "\(emailTextField.text!)", "password": "\(passwordTextField.text!)"]
        
        startStopAnimation()
        loginViewModel.doLogin(parameters: parameters) { result, error  in
            self.startStopAnimation()
            if (result){
                print("Logou")
            }else{
                self.exibeErro(self.errormsgcredenciaisLabel, false)
            }
        }
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
    
    func startStopAnimation(){
        if (spinnerIndicator.isHidden){
            spinnerIndicator.isHidden = false
            spinnerIndicator.startAnimating()
        }else{
            spinnerIndicator.stopAnimating()
        }
    }
    
    
    
    
    
    
}
