//
//  RegisterResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 24/05/21.
//

import Foundation

struct RegisterResult : Codable{
    
    let user : UserModel?
    let token : String?
    
    enum CodingKeys : String, CodingKey {
        case user = "storedUser"
        case token
    }
    
}
