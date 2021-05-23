//
//  ProfessionalsViewModel.swift
//  CampIoasys2Fase
//
//  Created by Antonio Alves on 22/05/21.
//

import Foundation

class ProfessionalViewModel {
    
    
    // MARK: Atributes
    var api = API()
    var network = Networking()
    
    var professionals : [ProfessionalModel] = []
    
    let headers = ["Content-Type" : "application/json", "authorization" : "Bearer \(UserDefaults.standard.string(forKey: "token") ?? "")" ]
    
   
    func doListProfessionals(_ parameters : [String : Any]?, completion : @escaping (Bool, Any?) -> ()){
        network.performRequest(type: ProfessionalResult.self, path: api.returnEndpoint(endpoint: .listProfessionals), method: .get, headers : headers) {  result, error in
            if let error = error {
                completion(false, error.localizedDescription)
            }else{
                self.setProfessionals(result?.professionals ?? [])
                completion(true, nil)
            }
            
        }
    }
    
    func setProfessionals(_ professionals: [ProfessionalModel]) {
        self.professionals = professionals
    }
    
    
    
    
}
