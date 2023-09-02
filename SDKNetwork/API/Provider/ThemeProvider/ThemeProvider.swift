//
//  ThemeProvider.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

public class ThemeProvider {
    public init() {
        
    }
    
    let httpRequest = NetworkService()
    
    func getThemeList(completion: @escaping (Result<[ThemeModel], NetworkError>) -> Void) {
        let EndPoint = Endpoint(url: "\(Constants.baseURL)/Api/Theme/GetListaTheme?uIdFirebase=\(Constants.defaultToken)", method: .get)
        
        return httpRequest.request(with: EndPoint, decodeType: [ThemeModel].self, completionHandler: completion)
    }
    
    func getThemeById(id: Int, completion: @escaping (Result<ThemeByIdModel, NetworkError>) -> Void) {
        let EndPoint = Endpoint(url: "\(Constants.baseURL)/Api/Theme/GetThemeById?id=\(id)&uIdFirebase=\(Constants.defaultToken)", method: .get)
        
        return httpRequest.request(with: EndPoint, decodeType: ThemeByIdModel.self, completionHandler: completion)
    }
    
}
