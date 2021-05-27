//
//  ConsultViewModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 26/05/21.
//

import Foundation

class ConsultViewModel {
    
    // MARK: Atributes
    var api = API()
    var network = Networking()
    
    let headers = ["authorization" : "Bearer \(UserDefaults.standard.string(forKey: "token") ?? "")" ]
    
    func doRegisterConsult(parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){

        let path = api.returnEndpoint(endpoint: .registerConsult) + (UserDefaults.standard.string(forKey: "id") ??  "") + "/consultations"

        network.performRequest(type: ConsultResult.self, path: path, method: .post, headers : headers, parameters: parameters) {  result, error in
            
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                completion(true, nil)
            }
            
        }
    }
}