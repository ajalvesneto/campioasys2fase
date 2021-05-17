//
//  API.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 17/05/21.
//

import Foundation

class API{
    
    let baseURl = "http://ioasyscamp.herokuapp.com"
    let version = "/api/v1/"
    
    func returnURL() -> String{
        return baseURl + version
    
    }
    
    func returnEndpoint(endPoint : endPoints) -> String{
        
        return returnURL() + endPoint.rawValue
        
    }
    
    enum endPoints : String {
        case login = "auth/signin"
    }
    
}
