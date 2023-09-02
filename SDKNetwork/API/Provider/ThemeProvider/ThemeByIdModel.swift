//
//  ThemeById.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

struct ThemeByIdModel: Codable {
    let result: Result
    let resultJson: String?
    let isSuccess: Bool
    let message: String?
    let exception: String?
    let stackTrace: String?
    
    struct Result: Codable {
        let name: String
        let id: Int
        let isInativo: Bool
        let creationDate: Date
        let changeDate: Date?
        let uid: String
        let uidFirebase: String
        let isChanged: Bool
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case id = "Id"
            case isInativo = "IsInativo"
            case creationDate = "CreationDate"
            case changeDate = "ChangeDate"
            case uid = "Uid"
            case uidFirebase = "UidFirebase"
            case isChanged = "IsChanged"
        }
    }
}



