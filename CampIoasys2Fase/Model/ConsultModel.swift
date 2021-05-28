//
//  ConsultResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 26/05/21.
//

import Foundation

struct ConsultResult : Codable{
    let consult : ConsultModel
    
    enum CodingKeys : String, CodingKey {
        case consult = "storedConsultation"
    }
}


struct ConsultModel : Codable {
    
    let id : String
    let userid : String
    let status : String
    let professionalid : String
    
    
    
    enum CodingKeys : String, CodingKey {
        case id, status
        case userid = "userId"
        case professionalid = "professionalId"
    }
}
