//
//  LoginResult.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 20/05/21.
//

import Foundation


struct LoginResult : Codable{
    
    let user : UserModel?
    let token : String?
    
    enum CodingKeys : String, CodingKey {
        case user, token
    }
    
}
