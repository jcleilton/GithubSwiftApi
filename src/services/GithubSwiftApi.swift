//
//  GithubSwiftApi.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

fileprivate var totalPage: Int = 1

public class GithubSwiftApi: GithubSwiftProtocol {
    public func fetch(page: String, completion: @escaping (Result<GithubSwiftResponse, GithubSwiftError>) -> Void) {
        guard let pageNumber = Int(page), pageNumber <= totalPage else {
            return completion(.failure(GithubSwiftError.noMorePages))
        }
        let apiCall = APICall(page: page)
        apiCall.fetch { result in
            switch result {
            case .success(let githubSwiftResponse):
                totalPage = githubSwiftResponse.totalCount / 10
                completion(.success(githubSwiftResponse))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
