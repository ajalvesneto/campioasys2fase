//
//  ProfessionalsViewController2.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 24/05/21.
//

import Foundation
import UIKit

class ConsultsViewController : UIViewController {
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var consultsTableView: UITableView!
    @IBOutlet weak var erroView: UIView!
    
    
    var consults = ConsultViewModel() {
        didSet {
            consultsTableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        consultsTableView.dataSource = self
        consultsTableView.delegate = self
        list()
    }
}

extension ConsultsViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         consults.consults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let consult = consults.consults[indexPath.row]
        let cell = consultsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ConsultTableViewCell
        cell.selectionStyle = .none
        configureLayoutCell(cell.consultView)
        
        /*var remotely = ""
        if (professional.remotely){
            remotely = "Remoto / "
        }*/
        
        
        
        
        
        /*cell.nameLabel.text = professional.firstname + " " + professionals.professionals[indexPath.row].lastname
        cell.codeLabel.text = "CRP: \(professional.crp)"
        cell.emailLabel.text = professional.email
        cell.placeLabel.text = "Atendimento: \(remotely)\(professional.city)"*/
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*let detailsVC = self.storyboard?.instantiateViewController(identifier: "details") as! DetailsViewController
        detailsVC.professionalViewModel.professionals.append( professionals.professionals[indexPath.row])
        self.navigationController?.pushViewController(detailsVC, animated: true)*/
    }
    
    
    func configureLayoutCell(_ view :  UIView){
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(red: 0.44, green: 0.00, blue: 1.00, alpha: 1.00).cgColor
        view.layer.cornerRadius = 10
    }
    
    func list(){
        startStopAnimation()
        consults.doListConsult(parameters: nil) { result, error in
            self.startStopAnimation()
            if (result){
                self.consultsTableView.reloadData()
            }else{
                self.exibeImagemNaoEncontrada()
            }
        }
        
    }
    
    func exibeImagemNaoEncontrada(){
        consultsTableView.isHidden = true
        erroView.isHidden = false
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
