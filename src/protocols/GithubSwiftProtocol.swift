//
//  GithubSwiftProtocol.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

public protocol GithubSwiftProtocol {
    func fetch(page: String, completion: @escaping(Result<GithubSwiftResponse, GithubSwiftError>) -> Void)
    func getImage(url: String, completion: @escaping (Result<Data, GithubSwiftError>) -> Void)
}
