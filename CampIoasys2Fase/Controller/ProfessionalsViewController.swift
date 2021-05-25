//
//  ProfessionalsViewController2.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 24/05/21.
//

import Foundation
import UIKit

class ProfessionalsViewController : UIViewController {
    
    @IBOutlet weak var professionalsTableView: UITableView!
    
    var professionals = ProfessionalViewModel(){
        didSet {
            professionalsTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        professionalsTableView.dataSource = self
        professionalsTableView.delegate = self
        list()
    }
}

extension ProfessionalsViewController : UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        professionals.professionals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = professionalsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfessionalTableViewCell
        
        configureLayoutCell(cell)
        
        cell.nameLabel.text = professionals.professionals[indexPath.row].firstname + " " + professionals.professionals[indexPath.row].lastname
        cell.codeLabel.text = "CRP: \(professionals.professionals[indexPath.row].crp)"
        cell.phoneLabel.text = "Tel: 87897545"//professionals.professionals[indexPath.row].
        cell.placeLabel.text = "Atendimento: \( professionals.professionals[indexPath.row].city)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
    
    func configureLayoutCell(_ cell :  ProfessionalTableViewCell){
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor(red: 0.44, green: 0.00, blue: 1.00, alpha: 1.00).cgColor
        cell.layer.cornerRadius = 10
    }
    
    func list(){
        professionals.doListProfessionals(nil) { result, error in
            if (result){
                self.professionalsTableView.reloadData()
            }
        }
        
    }
    
    
}
