//
//  ThemeComponentModel.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 03/09/23.
//

import Foundation

struct ThemeComponentModel: Codable {
    public let themeId: Int
    public let theme: Theme
    public let name: String
    public let foregroundColor: String
    public let backgroundColor: String
    public let fontName: String
    public let fontSize: Int
    public let style: String
    public let id: Int
    public let isInativo: Bool
    public let creationDate: Date
    public let changeDate: Date?
    public let uid: String
    public let uidFirebase: String
    public let isChanged: Bool
    
    struct Theme: Codable {
        public let name: String
        public let id: Int
        public let isInativo: Bool
        public let creationDate: Date
        public let changeDate: Date?
        public let uid: String
        public let uidFirebase: String
        public let isChanged: Bool
        
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
