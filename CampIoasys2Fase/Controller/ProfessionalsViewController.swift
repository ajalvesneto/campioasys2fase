//
//  ProfessionalsCollectionViewController.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 22/05/21.
//

import UIKit


class ProfessionalsViewController: UIViewController{
    
    let reuseIdentifier = "cell"
    
    @IBOutlet weak var profissionaisCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        return 3
    }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProfessionalsCollectionViewCell
    
        // Configure the cell
    
        return cell
    }

  

}
