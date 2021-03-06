//
//  RegisterScrollViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 19/05/21.
//

import UIKit

class RegisterScrollViewController: UIViewController, UITextFieldDelegate {
    
    
    // MARK: IOBOutlets
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sobrenomeTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmpasswordTextField: UITextField!
    @IBOutlet weak var errorLenghtPasswordLabel: UILabel!
    @IBOutlet weak var errorDifferentPasswordLabel: UILabel!
    
    @IBOutlet weak var spinnerIndicator: UIActivityIndicatorView!
    
    // MARK: vars
    var userViewModel = UserViewModel()
    
    // MARK: Life View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        phoneTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        confirmpasswordTextField.delegate = self
        sobrenomeTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = .white
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    //MARK: IBActions
    @IBAction func registerButton(_ sender: Any) {
        
        if (passwordTextField.text!.count) < 8 {
            exibeErro(errorLenghtPasswordLabel, false)
            
            return
        }
        
        if (passwordTextField.text != confirmpasswordTextField.text) {
            exibeErro(errorDifferentPasswordLabel, false)
            
            return
        }
        
        let parameters = ["firstName" : "\(nameTextField.text!)" , "lastName" : "\(sobrenomeTextField.text!)" , "email": "\(emailTextField.text!)", "password": "\(passwordTextField.text!)", "telephone" : "\(phoneTextField.text!)"]
        
        startStopAnimation()
        
        
        userViewModel.doRegister(parameters: parameters) { result, error  in
            self.startStopAnimation()
            if (result){
                let successVC = self.storyboard?.instantiateViewController(identifier: "success") as! SuccessViewController
                self.navigationController?.pushViewController(successVC, animated: true)
            }else{
                self.exibeAlerta()
            }
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
    
    func exibeAlerta(){
        let alert = UIAlertController(title: "Erro :(", message: "Aconteceu um erro durante o cadastro", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
    
    
}
