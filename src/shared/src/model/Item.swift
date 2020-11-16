//
//  Item.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

public struct Item: Codable {
    public let id: Int
    public let name, fullName: String
    public let itemPrivate: Bool
    public let owner: Owner
    public let htmlURL: String
    public let itemDescription: String
    public let stargazersURL: String
    public let downloadsURL: String
    public let gitURL, sshURL: String
    public let cloneURL: String
    public let stargazersCount: Int
    public let language: String
    public let forksCount: Int
    public let watchers: Int
    public let score: Int
    
    static func getMock() -> Item {
        Item(
            id: 1, name: "Test", fullName: "Test Test", itemPrivate: false,
            owner: Owner(login: "", id: 1, avatarURL: ""),
            htmlURL: "-", itemDescription: "- - -", stargazersURL: "", downloadsURL: "",
            gitURL: "", sshURL: "-", cloneURL: "-", stargazersCount: 5, language: "Swift",
            forksCount: 9, watchers: 9, score: 10)
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case itemPrivate = "private"
        case owner
        case htmlURL = "html_url"
        case itemDescription = "description"
        case stargazersURL = "stargazers_url"
        case downloadsURL = "downloads_url"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case stargazersCount = "stargazers_count"
        case language
        case forksCount = "forks_count"
        case watchers
        case score
    }
}
