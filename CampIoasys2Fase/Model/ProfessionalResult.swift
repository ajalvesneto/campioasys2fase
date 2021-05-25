//
//  ProfessionalsResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 22/05/21.
//

import Foundation

struct ProfessionalResult : Codable{
    
    let professionals : [ProfessionalModel]
    let metadata : Metadata
    
    enum CodingKeys : String, CodingKey {
        case professionals = "data", metadata
    }
    
}

struct Metadata : Codable{
    let total : Int
    
    enum CodingKeys : String, CodingKey {
        case total
    }
    
}
