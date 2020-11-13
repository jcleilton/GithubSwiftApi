//
//  GithubSwiftResponse.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

public struct GithubSwiftResponse: Codable {
    public let totalCount: Int
    public let incompleteResults: Bool
    public let items: [Item]
}
