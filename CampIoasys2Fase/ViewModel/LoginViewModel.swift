//
//  LoginViewModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 16/05/21.
//

import Foundation

class LoginViewModel{
    
   var api = API()
   var network = Networking()
    
    var loginModel : LoginModel
    
    init(loginModel: LoginModel){
        self.loginModel = loginModel
    }
    
    func login(){
        network.performRequest(type: LoginModel.self, path: api.returnEndpoint(endPoint: .login), method: .post, parameters: LoginModel) { Decodable?, Error? in
            
        }
    }
}
    
