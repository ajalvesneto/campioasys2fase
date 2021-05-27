//
//  ProfessionalTableViewCell.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 25/05/21.
//

import UIKit

class ConsultTableViewCell: UITableViewCell {

    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var consultView: UIView!
    @IBOutlet weak var avaliationButton: UIButton!
    @IBOutlet weak var statusButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func avaliar(_ sender: Any) {
        print("clickou")
    }
    

}
