//
//  RequestBuilder.swift
//  SDKNetwork
//
//  Created by Cesar Silva on 29/08/23.
//

import Foundation

protocol RequestBuilderProtocol: AnyObject {
    func buildRequest(with endpoint: Endpoint, url: URL) -> URLRequest
}

class RequestBuilder: RequestBuilderProtocol {
    func buildRequest(with endpoint: Endpoint, url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        
        request.httpMethod = endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.headers
        
        if let parameters = endpoint.parameters {
            switch parameters {
            case .dictionary(let dictionary):
                request.httpBody = try? JSONSerialization.data(withJSONObject: dictionary, options: .fragmentsAllowed)
            case .encodable(let encodable):
                request.httpBody = try? JSONEncoder().encode(encodable)
            }
        }

        return request
    }
}
