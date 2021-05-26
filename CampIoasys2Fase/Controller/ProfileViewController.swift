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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func configureView(){
        nameLabel.text = UserDefaults.standard.string(forKey: "firstname")! + " " + UserDefaults.standard.string(forKey: "lastname")!
        phoneLabel.text = UserDefaults.standard.string(forKey: "telephone")!
        emailLabel.text = UserDefaults.standard.string(forKey: "telephone")!
    }
    
    
    @IBAction func edit(_ sender: Any) {
    }
    
    @IBAction func ok(_ sender: Any) {
    }
    
}
