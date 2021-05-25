//
//  DetailsViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 25/05/21.
//

import Foundation
import UIKit

class DetailsViewController : UIViewController {
    
  var professionalViewModel = ProfessionalViewModel()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var aboutView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    
    
    func configureView(){
        nameLabel.text = professionalViewModel.professionals[0].firstname + " " + professionalViewModel.professionals[0].lastname
        aboutLabel.text = professionalViewModel.professionals[0].biography
        
        
        aboutView.layer.backgroundColor = UIColor(red: 0.44, green: 0.00, blue: 1.00, alpha: 1.00).cgColor
        aboutView.layer.cornerRadius = 10
       
    }
        
    
    @IBAction func register(_ sender: Any) {
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
