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
    
    /*var loginModel : LoginModel
    
    init(loginModel: LoginModel){
        self.loginModel = loginModel
    }*/
    
    func doLogin(parameters : [String : Any]?, completion : @escaping (String) -> ()){
        network.performRequest(type: LoginResult.self, path: api.returnEndpoint(endPoint: .login), method: .post, parameters: parameters) { [self] result, error in
                
            if let error = error {
                completion("Deu erro")
            }
            
            if let result = result{
                completion("Deu Certo")
            }
            
        }
            
          
            
        }
    
}
    
