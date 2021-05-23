//
//  API.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 17/05/21.
//

import Foundation

class API {
    let baseURl = "https://apicamp.herokuapp.com"
    let version = "/api/v1/"
    
    func returnURL() -> String {
        return baseURl + version
    
    }
    
    func returnEndpoint(endpoint : Endpoints) -> String{
        
        return returnURL() + endpoint.rawValue
        
    }
    
    enum Endpoints : String {
        case login = "auth/signin"
        case listProfessionals = "professionals/"
        case register = "auth/signup"
    }
    
}
