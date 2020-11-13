//
//  GithubSwiftMockApi.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

public class GithubSwiftMockApi: GithubSwiftProtocol {
    public init() {
        
    }
    
    public func fetch(page: String, completion: @escaping (Result<GithubSwiftResponse, GithubSwiftError>) -> Void) {
        guard let pageNumber = Int(page), pageNumber <= 10 else {
            return completion(.failure(GithubSwiftError.noMorePages))
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            let data = GithubSwiftResponse(
                totalCount: 100,
                incompleteResults: false,
                items: (0...9).compactMap{ _ in Item.getMock() }
            )
            completion(.success(data))
        }
    }
}
