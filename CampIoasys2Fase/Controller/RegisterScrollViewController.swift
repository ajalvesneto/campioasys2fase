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
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmpasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        phoneTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        confirmpasswordTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButton(_ sender: Any) {
    }
    
    

}
