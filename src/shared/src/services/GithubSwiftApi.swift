//
//  GithubSwiftApi.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

fileprivate var totalPage: Int = 1

public class GithubSwiftApi: GithubSwiftProtocol {
    public var perPage: Int = 10
    
    public init() {
        
    }
    
    public func fetch(page: String, completion: @escaping (Result<GithubSwiftResponse, GithubSwiftError>) -> Void) {
        guard let pageNumber = Int(page), pageNumber <= totalPage else {
            return completion(.failure(GithubSwiftError.noMorePages))
        }
        let apiCall = APICall(page: page)
        apiCall.fetch { [perPage] result in
            switch result {
            case .success(let githubSwiftResponse):
                totalPage = GithubSwiftApi.getTotalPage(value: githubSwiftResponse.totalCount, from: perPage)
                completion(.success(githubSwiftResponse))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    public func getImage(url: String, completion: @escaping (Result<Data, GithubSwiftError>) -> Void) {
        if let url = URL(string: url) {
            APICall.downloadImage(from: url) { result in
                completion(result)
            }
        } else {
            completion(.failure(.badURL))
        }
    }
    
    public static func getTotalPage(value: Int, from perPage: Int) -> Int {
        value.getTotalPage(from: perPage)
    }
}
