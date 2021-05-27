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
        network.performRequest(type: LoginResult.self, path: api.returnEndpoint(endpoint: .login), method: .post, headers : headers, parameters: parameters) {  result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                if let result = result {
                    self.setUserDefaults(result)
                    completion(true, nil)
                }
                
            }
            
        }
    }
    
    func doRegister(parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){
        network.performRequest(type: RegisterResult.self, path: api.returnEndpoint(endpoint: .register), method: .post, headers : headers, parameters: parameters) {  result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                completion(true, nil)
            }
            
        }
    }
    
    
    
    func setUserDefaults(_ result : LoginResult){
        UserDefaults.standard.set(result.token, forKey: "token")
        UserDefaults.standard.set(result.user?.id, forKey: "id")
        UserDefaults.standard.set(result.user?.firstname, forKey: "firstname")
        UserDefaults.standard.set(result.user?.lastname, forKey: "lastname")
        UserDefaults.standard.set(result.user?.email, forKey: "email")
        UserDefaults.standard.set(result.user?.telephone, forKey: "telephone")
    }
    
    func unsetUserDefaults(){
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
}
