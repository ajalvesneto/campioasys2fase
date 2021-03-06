//
//  ComoFuncionaViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 25/05/21.
//

import UIKit

class ComoFuncionaViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var comofuncionaLabel: UILabel!
    
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Methods
    
    func configureView(){
        comofuncionaLabel.text = "Nosso objetivo é criar um ambiente para que todas as pessoas possam se sentir seguras ao procurarem uma consulta. \n\n Todos os profissionais listados aqui passam por aprovação e cada nova avaliação é levada em consideração.\n\n Somos um time diverso que busca sempre entregar uma solução de valor para nossos usuários! \n\n Se você conhece algum profissional que compactua com nossos valores, não se esqueça de compartilhar a consul.t. Espalhe essa ideia para que possamos ter cada vez mais aliados!"
        textView.layer.borderWidth = 2
        textView.layer.borderColor = UIColor(red: 0.44, green: 0.00, blue: 1.00, alpha: 1.00).cgColor
        textView.layer.cornerRadius = 48
        textView.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner]
    }
    
}
