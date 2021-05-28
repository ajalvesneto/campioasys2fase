//
//  ConsultResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 26/05/21.
//

import Foundation


struct ListConsultModel : Codable {
    
    let id : String
    let status : String
    let reason : String
    let userid : String
    let professionalid : String
    let professional : ProfessionalConsultModel
    
    
    
    enum CodingKeys : String, CodingKey {
        case id, status, reason, professional
        case userid = "userId"
        case professionalid = "professionalId"
        
    }
}

struct ProfessionalConsultModel : Codable {
    
    let id : String
    let firstname : String
    let lastname : String
    let email : String
    let city : String
    let crp : String
    
    enum CodingKeys : String, CodingKey {
        case id, email, city, crp
        case firstname = "firstName"
        case lastname = "lastName"
    }
}
