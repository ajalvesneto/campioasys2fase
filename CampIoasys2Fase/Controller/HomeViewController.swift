//
//  HomeViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 20/05/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var comofuncionaView: UIView!
    @IBOutlet weak var profissionaisView: UIView!
    @IBOutlet weak var historicoView: UIView!
    
    @IBOutlet weak var boasvindasLabel: UILabel!
    
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        boasvindasLabel.text = "Olá, \(UserDefaults.standard.string(forKey: "firstname") ??  "")"
        
        configureCardsViews(comofuncionaView)
        configureCardsViews(profissionaisView)
        configureCardsViews(historicoView)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        boasvindasLabel.text = "Olá, \(UserDefaults.standard.string(forKey: "firstname") ??  "")"
    }
    
    //MARK: Actions
    @IBAction func comofunciona(_ sender: Any) {
        tabBarController?.selectedIndex = Screens.about.rawValue
    }
    
    @IBAction func historico(_ sender: Any) {
        tabBarController?.selectedIndex = Screens.consult.rawValue
    }
    @IBAction func profissionais(_ sender: Any) {
        tabBarController?.selectedIndex =  Screens.search.rawValue
    }
    @IBAction func perfil(_ sender: Any) {
        tabBarController?.selectedIndex = Screens.profile.rawValue
        
    }
    
    //MARK: Methods
    func configureCardsViews(_ view : UIView){
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 24
        view.layer.borderColor = CGColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1)
        
        view.layer.shadowColor = CGColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1)
        
    }
}
