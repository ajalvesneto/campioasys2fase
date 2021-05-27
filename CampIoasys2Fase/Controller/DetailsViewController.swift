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
  var consultViewModel = ConsultViewModel()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    
    
    func configureView(){
        professionalViewModel.professionals.map { professional in
            var remotely = ""
            if (professional.remotely){
                remotely = "Remoto ou "
            }
            
            nameLabel.text = professional.firstname + " " + professional.lastname
            codeLabel.text = "CRP: \(professional.crp)"
            emailLabel.text = professional.email
            placeLabel.text = "Atendimento: \(remotely)\(professional.city)"
            aboutLabel.text = professional.biography
        }
        
        
        aboutView.layer.cornerRadius = 48
        aboutView.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner]
       
    }
        
    
    @IBAction func register(_ sender: Any) {
        let parameters = /*["consultation" :*/ ["professionalId" : professionalViewModel.professionals[0].id, "reason" : "Problems Teste"]
        startStopAnimation()
        consultViewModel.doRegisterConsult(parameters: parameters) { result, error in
            self.startStopAnimation()
            if (result){
                guard let registerVC = self.storyboard?.instantiateViewController(identifier: "successConsult") else  {return}
                self.navigationController?.pushViewController(registerVC, animated: true)
            }else{
                print(error)
            }
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
