//
//  LoginModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 16/05/21.
//

import Foundation

struct UserModel : Codable {
    let id : String
    let firstname : String
    let lastname : String
    let email : String
    let telephone : String
   /* let isAdmin : Bool
    let dateCreation : String
    let dateUpdate : String*/
    //let isDeleted : Bool

    
    
    enum CodingKeys : String, CodingKey {
        case id, email, telephone
        case firstname = "firstName"
        case lastname = "lastName"
    }
    
}

