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
    @IBOutlet weak var registerLabel: UILabel!
    
    @IBOutlet weak var spinnerIndicator: UIActivityIndicatorView!
    
    var userViewModel = UserViewModel()
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verificaLogado()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(register(_:)))
        
        registerLabel.addGestureRecognizer(gestureRecognizer)
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = .white
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor(red: 0.42, green: 0.55, blue: 1.00, alpha: 1.00).cgColor
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
        userViewModel.doLogin(parameters: parameters) { result, error  in
            self.startStopAnimation()
            if (result){
                let homeVC = self.storyboard?.instantiateViewController(identifier: "home")
                self.navigationController?.pushViewController(homeVC!, animated: true)
            }else{
                self.exibeErro(self.errormsgcredenciaisLabel, false)
            }
        }
    }
    
    
    @objc func register(_ sender: Any) {
        let registerVC = self.storyboard?.instantiateViewController(identifier: "register") as! RegisterScrollViewController
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    func verificaLogado(){
        if (UserDefaults.standard.string(forKey: "token") != nil){
            let homeVC = self.storyboard?.instantiateViewController(identifier: "home")
            self.navigationController?.pushViewController(homeVC!, animated: true)
        }
        
        
    }
    
    
    // MARK: - Methods
    
    func exibeErro(_ label : UILabel, _ valor : Bool){
        label.isHidden = valor 
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
