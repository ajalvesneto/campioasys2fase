//
//  LoginViewModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 16/05/21.
//

import Foundation

class LoginViewModel {
    var api = API()
    var network = Networking()
    
    func doLogin(parameters : [String : Any]?, headers : [String : String] , completion : @escaping (Any?, String?) -> ()){
        network.performRequest(type: LoginResult.self, path: api.returnEndpoint(endpoint: .login), method: .post, headers : headers, parameters: parameters) { [self] result, error in
            if let error = error {
                completion("Deu erro", error.localizedDescription)
            }
            if let result = result{
                completion(result, nil)
            }
            
        }
    }
}
