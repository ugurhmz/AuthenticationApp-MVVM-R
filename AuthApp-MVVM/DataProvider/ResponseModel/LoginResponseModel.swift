//
//  LoginResponseModel.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import Foundation


public struct LoginResponseModel: Decodable {
    let id, email, username, name: String?
    let role: String?
    let activationToken: String?
    let isVerified: Bool?
    let createdAt, updatedAt, loginToken: String?

    enum CodingKeys: String, CodingKey {
        case id = "_d"
        case email
        case username
        case name
        case role
        case activationToken
        case isVerified
        case createdAt
        case updatedAt
        case loginToken
    }
}
