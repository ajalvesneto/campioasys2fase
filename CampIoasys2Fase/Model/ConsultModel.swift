//
//  ConsultResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 26/05/21.
//

import Foundation


struct ConsultModel : Codable {
    
    let id : String
    let userid : String
    let status : String
    let professionalid : String
    let comment : String
    //let good : Bool?
    
}

enum CodingKeys : String, CodingKey {
    case id, status, comment
    case userid = "userId"
    case professionalid = "professionalId"
    //case good = "wasGood"
}
