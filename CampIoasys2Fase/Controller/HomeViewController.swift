//
//  HomeViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 20/05/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var comofuncionaView: UIView!
    @IBOutlet weak var profissionaisView: UIView!
    @IBOutlet weak var historicoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCardsViews(comofuncionaView)
        configureCardsViews(profissionaisView)
        configureCardsViews(historicoView)

    }
    
    
    @IBAction func comofunciona(_ sender: Any) {
    }
    
    @IBAction func historico(_ sender: Any) {
    }
    @IBAction func profissionais(_ sender: Any) {
    }
    
    func configureCardsViews(_ view : UIView){
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 10
        view.layer.borderColor = CGColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1)
        
        view.layer.shadowColor = CGColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1)
        
    }
}
