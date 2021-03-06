//
//  ProfessionalsResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 22/05/21.
//

import Foundation

struct ListConsultResult : Codable{
    
    let consults : [ListConsultModel]
    let metadata : MetadataConsult
    
    enum CodingKeys : String, CodingKey {
        case consults = "data", metadata
    }
    
}

struct MetadataConsult : Codable{
    let total : Int
    
    enum CodingKeys : String, CodingKey {
        case total
    }
    
}
