//
//  ThemeById.swift
//  SDKNetwork
//
//  Created by Alex Sandro on 02/09/23.
//

import Foundation

struct ThemeByIdModel: Codable {
    let result: ThemeModel
    let resultJson: String?
    let isSuccess: Bool?
    let message: String?
    let exception: String?
    let stackTrace: String?
}



