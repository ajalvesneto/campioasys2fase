//
//  EditProfileViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 27/05/21.
//

import Foundation
import UIKit

class EditProfileViewController : UIViewController{
    
    var userViewModel = UserViewModel()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sobrenomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var telefoneTextField: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues()
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        let parameters = ["user" : ["firstName" : "\(nameTextField.text!)", "lastName" : "\(sobrenomeTextField.text!)", "email" : "\(emailTextField.text!)", "telephone" : "\(telefoneTextField.text!)" ] ]
        startStopAnimation()
        userViewModel.doUpdate(parameters: parameters) { result, error in
            self.startStopAnimation()
            if (result){
                self.navigationController?.popViewController(animated: true)
            }else{
                print(error)
            }
        }
    }
    
    func setValues(){
        nameTextField.text = UserDefaults.standard.string(forKey: "firstname")
        sobrenomeTextField.text = UserDefaults.standard.string(forKey: "lastname")
        emailTextField.text = UserDefaults.standard.string(forKey: "email")
        telefoneTextField.text = UserDefaults.standard.string(forKey: "telephone")
    }
    
    func startStopAnimation(){
        if (spinner.isHidden){
            spinner.isHidden = false
            spinner.startAnimating()
        }else{
            spinner.stopAnimating()
        }
    }
}
