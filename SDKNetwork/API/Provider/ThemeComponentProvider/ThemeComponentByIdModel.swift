//
//  ThemeComponentById.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 03/09/23.
//

import Foundation

struct ThemeComponentByIdModel: Codable {
    public let result: Result
    public let resultJson: String
    public let isSuccess: Bool
    public let message: String
    public let exception: Exception
    public let stackTrace: String
    
    struct Result: Codable {
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
        
        enum CodingKeys: String, CodingKey {
            case themeId = "ThemeId"
            case theme = "Theme"
            case name = "Name"
            case foregroundColor = "ForegroundColor"
            case backgroundColor = "BackgroundColor"
            case fontName = "FontName"
            case fontSize = "FontSize"
            case style = "Style"
            case id = "Id"
            case isInativo = "IsInativo"
            case creationDate = "CreationDate"
            case changeDate = "ChangeDate"
            case uid = "Uid"
            case uidFirebase = "UidFirebase"
            case isChanged = "IsChanged"
        }
    }
    
    struct Exception: Codable {
        // if necessary
    }
}
