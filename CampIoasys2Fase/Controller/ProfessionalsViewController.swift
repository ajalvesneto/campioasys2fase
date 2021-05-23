//
//  ProfessionalsCollectionViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 22/05/21.
//

import UIKit


class ProfessionalsViewController: UIViewController{
    
    let reuseIdentifier = "cell"
    var professionals = ProfessionalViewModel(){
        didSet {
            profissionaisCollectionView.reloadData()
        }
    }
    
    
    
    @IBOutlet weak var profissionaisCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list()
        profissionaisCollectionView.delegate = self
        profissionaisCollectionView.dataSource = self
        
    }
}


extension ProfessionalsViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return professionals.professionals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProfessionalsCollectionViewCell
        
        cell.nameLabel.text = professionals.professionals[indexPath.row].firstname + " " + professionals.professionals[indexPath.row].lastname
        cell.codLabel.text = professionals.professionals[indexPath.row].crp
        cell.phoneLabel.text = "87897545"//professionals.professionals[indexPath.row].
        cell.locationLabel.text = professionals.professionals[indexPath.row].city
        
        // Configure the cell
        
        return cell
    }
    
    func list(){
        professionals.doListProfessionals(nil) { result, error in
            if (result){
                self.profissionaisCollectionView.reloadData()
            }
        }
        
    }
    
}





