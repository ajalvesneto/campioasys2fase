//
//  ComoFuncionaViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 25/05/21.
//

import UIKit

class ComoFuncionaViewController: UIViewController {

    @IBOutlet weak var textView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        
    }
    
    func configureView(){
        textView.layer.borderWidth = 2
        textView.layer.borderColor = UIColor(red: 0.44, green: 0.00, blue: 1.00, alpha: 1.00).cgColor
        textView.layer.cornerRadius = 10
    }
    
}
