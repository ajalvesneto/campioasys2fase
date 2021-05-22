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
    
    @IBOutlet weak var boasvindasLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boasvindasLabel.text = "Olá, \(UserDefaults.standard.string(forKey: "name") ??  "")"
        
        configureCardsViews(comofuncionaView)
        configureCardsViews(profissionaisView)
        configureCardsViews(historicoView)

    }
    
    
    @IBAction func comofunciona(_ sender: Any) {
        print("implementar como funciona")
    }
    
    @IBAction func historico(_ sender: Any) {
        print("implementar historico")
    }
    @IBAction func profissionais(_ sender: Any) {
        tabBarController?.selectedIndex = 1
    }
    
    func configureCardsViews(_ view : UIView){
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 10
        view.layer.borderColor = CGColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1)
        
        view.layer.shadowColor = CGColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1)
        
    }
}
