//
//  ThemeModel.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

struct ThemeModel: Codable {
    public let name: String?
    public let id: Int?
    public let isInativo: Bool?
    public let creationDate: Date?
    public let changeDate: Date?
    public let uid: String?
    public let uidFirebase: String?
    public let isChanged: Bool?
}
