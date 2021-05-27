//
//  ProfileViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 26/05/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var userViewModel = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureView()
    }
    
    
    func configureView(){
        nameLabel.text = "\(UserDefaults.standard.string(forKey: "firstname")!) \(UserDefaults.standard.string(forKey: "lastname")!)"
        phoneLabel.text = UserDefaults.standard.string(forKey: "telephone")!
        emailLabel.text = UserDefaults.standard.string(forKey: "email")!
    }
    
    
    @IBAction func edit(_ sender: Any) {
        let editVC = self.storyboard?.instantiateViewController(identifier: "edit") as! EditProfileViewController
        self.navigationController?.pushViewController(editVC, animated: true)
    
    }
    
    @IBAction func sair(_ sender: Any) {
        userViewModel.unsetUserDefaults()
        let vc = self.storyboard?.instantiateViewController(identifier: "LoginStoryboard") as! LoginViewController
        
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
}
