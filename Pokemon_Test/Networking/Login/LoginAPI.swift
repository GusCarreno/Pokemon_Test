//
//  LoginAPI.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 27/10/21.
//

import UIKit
import Combine

final class LoginAPI: API {
    
    // MARK: Public functions
   public func requestLogin( Username : String , Pass : String) -> AnyPublisher<APIResponse, Error>? {
       
        let queryItems = [URLQueryItem(name: "email", value: Username), URLQueryItem(name: "password", value: Pass)]
        var urlComps = URLComponents(string: "https://api-express-rapf.herokuapp.com/login")!
        urlComps.queryItems = queryItems
        let urlFinal = urlComps.url
        
        let request = URLRequest(url: urlFinal!)
      
       return LoginAPI.agent.execute(request).map { (response: APIResponse) -> APIResponse in
            //self.pokemonResponse = response
            
            return response
        }.eraseToAnyPublisher()
    }
}

