//
//  ProfessionalTableViewCell.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 25/05/21.
//

import UIKit

class ProfessionalTableViewCell: UITableViewCell {

    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var professionalView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    

}
