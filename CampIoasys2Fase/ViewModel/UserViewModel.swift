//
//  LoginViewModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 16/05/21.
//

import Foundation

class UserViewModel {
    
    // MARK: Atributes
    var api = API()
    var network = Networking()
    
    let headers = ["Content-Type" : "application/json"]
    
    // MARK: Methods
    
    func doLogin(parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){
        network.performRequest(type: LoginResult.self, path: api.returnEndpoint(endpoint: .login), method: .post, headers : headers, parameters: parameters) { [self] result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                completion(true, nil)
            }
            
        }
    }
    
    func doRegister(parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){
        network.performRequest(type: UserModel.self, path: api.returnEndpoint(endpoint: .register), method: .post, headers : headers, parameters: parameters) { [self] result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                completion(true, nil)
            }
            
        }
    }
}
