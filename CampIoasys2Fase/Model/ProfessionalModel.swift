//
//  ProfessionalModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 22/05/21.
//

import Foundation

struct ProfessionalModel : Codable {
    let id : String
    let firstname : String
    let lastname : String
    let email : String
    let professionalfield : String
    let experience : String
    let biography : String
    let city : String
    let remotely : Bool
    let crp : String
    //let isDeleted : Bool

    
    
    enum CodingKeys : String, CodingKey {
        case id, email, experience, biography, city, remotely, crp
        case firstname = "firstName"
        case lastname = "lastName"
        case professionalfield = "professionalField"
    }
    
}
