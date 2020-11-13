//
//  Licence.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

public struct License: Codable {
    public let key, name, spdxID: String
    public let url: String
    public let nodeID: String
}