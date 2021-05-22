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
    
    
    func doLogin(parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){
        network.performRequest(type: LoginResult.self, path: api.returnEndpoint(endpoint: .login), method: .post, headers : headers, parameters: parameters) { [self] result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                UserDefaults.standard.set(result?.token, forKey: "token")
                UserDefaults.standard.set(result?.user?.name, forKey: "name")
                completion(true, nil)
            }
            
        }
    }
    
    func doRegister(parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){
        network.performRequest(type: LoginResult.self, path: api.returnEndpoint(endpoint: .register), method: .post, headers : headers, parameters: parameters) { [self] result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                completion(true, nil)
            }
            
        }
    }
}
