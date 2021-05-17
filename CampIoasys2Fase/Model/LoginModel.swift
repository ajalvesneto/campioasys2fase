//
//  LoginModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 16/05/21.
//

import Foundation

struct LoginModel : Codable {
    let email : String
    let password : String
    
    
    init(email:String, password : String){
        self.email = email
        self.password = password
    }
    
    
    
    enum CodingKeys : String, CodingKey {
        case email, password
    }
}

struct LoginResult : Codable{
    
}
