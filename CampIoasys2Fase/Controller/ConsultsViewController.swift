//
//  ProfessionalsViewController2.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 24/05/21.
//

import Foundation
import UIKit

class ConsultsViewController : UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var consultsTableView: UITableView!
    @IBOutlet weak var erroView: UIView!
    
    
    //MARK: Vars
    var consultVM = ConsultViewModel() {
        didSet {
            consultsTableView.reloadData()
        }
    }
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        consultsTableView.dataSource = self
        consultsTableView.delegate = self
        listConsults()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        listConsults()
    }
}

extension ConsultsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        consultVM.consults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let consult = consultVM.consults[indexPath.row]
        let cell = consultsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ConsultTableViewCell
        cell.selectionStyle = .none
        cell.statusButton.layer.borderWidth = 2
        cell.statusButton.layer.borderColor = UIColor(red: 0.42, green: 0.55, blue: 1.00, alpha: 1.00).cgColor
        
        configureLayouViewCell(cell.consultView)
        
        /*var remotely = ""
         if (professional.remotely){
         remotely = "Remoto / "
         }*/
        
        
        
        cell.nameLabel.text = consult.professional.firstname + " " + consult.professional.lastname
        cell.codeLabel.text = "CRP: \(consult.professional.crp)"
        cell.emailLabel.text = consult.professional.email
        
        if (consult.status == "confirmed") {
            cell.statusButton.tintColor = UIColor(red: 0.22, green: 0.84, blue: 0.36, alpha: 1.00)
            cell.statusButton.layer.borderColor = UIColor(red: 0.22, green: 0.84, blue: 0.36, alpha: 1.00).cgColor
            cell.statusButton.setTitle("Realizada", for: .normal)
            
            cell.avaliationButton.backgroundColor = UIColor(red: 0.66, green: 0.39, blue: 1.00, alpha: 1.00)
            cell.avaliationButton.isEnabled = true
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*let detailsVC = self.storyboard?.instantiateViewController(identifier: "details") as! DetailsViewController
         detailsVC.professionalViewModel.professionals.append( professionals.professionals[indexPath.row])
         self.navigationController?.pushViewController(detailsVC, animated: true)*/
    }
    
    
    func configureLayouViewCell(_ view :  UIView){
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(red: 0.44, green: 0.00, blue: 1.00, alpha: 1.00).cgColor
        view.layer.cornerRadius = 10
        
    }
    
    func listConsults() {
        startStopAnimation()
        consultVM.doListConsult(parameters: nil) { result, error in
            self.startStopAnimation()
            if (result){
                
                self.consultsTableView.reloadData()
                if (self.consultVM.consults.count == 0 ){
                    self.exibeImagemNaoEncontrada()
                }else{
                    self.exibeTableView()
                }
            }else{
                self.exibeImagemNaoEncontrada()
            }
        }
        
    }
    
    func exibeImagemNaoEncontrada() {
        consultsTableView.isHidden = true
        erroView.isHidden = false
    }
    
    func exibeTableView() {
        consultsTableView.isHidden = false
        erroView.isHidden = true
    }
    
    
    func startStopAnimation() {
        if (spinner.isHidden){
            spinner.isHidden = false
            spinner.startAnimating()
        }else{
            spinner.stopAnimating()
        }
    }
    
    
}
