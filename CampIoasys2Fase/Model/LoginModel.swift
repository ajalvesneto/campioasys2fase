//
//  LoginModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 16/05/21.
//

import Foundation

struct LoginModel : Codable {
    let id : String
    let name : String
    let email : String
   /* let isAdmin : Bool
    let dateCreation : String
    let dateUpdate : String*/
    let isDeleted : Bool
    
    
    enum CodingKeys : String, CodingKey {
        case id, name, email, /*isAdmin,*/ isDeleted
        /*case dateCreation = "createdAt"
        case dateUpdate = "updatedAt"*/
    }
}

struct LoginResult : Codable{
    
    let user : LoginModel?
    let token : String?
    
    enum CodingKeys : String, CodingKey {
        case user, token
    }
    
}
