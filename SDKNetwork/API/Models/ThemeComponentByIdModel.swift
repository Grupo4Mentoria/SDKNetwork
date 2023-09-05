//
//  ThemeComponentById.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 03/09/23.
//

import Foundation

struct ThemeComponentByIdModel: Codable {
    public let result: ThemeComponentModel
    public let resultJson: String
    public let isSuccess: Bool
    public let message: String
    public let exception: Exception
    public let stackTrace: String
    
    struct Exception: Codable {
        // if necessary
    }
}
