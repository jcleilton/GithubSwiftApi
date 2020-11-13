//
//  APICall.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

fileprivate let ROOT_URL = "https://api.github.com/search/repositories?q=language:swift&sort=stars&order=desc"

public class APICall {
    private let page: String
    private let perPage: String
    private let session: URLSession
    
    init(page: String, perPage: String = "10") {
        self.page = page.isEmpty ? "&page=1" : "&page=\(page)"
        self.perPage = perPage.isEmpty ? "&per_page=10" : "&per_page=\(perPage)"
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = ["Content-Type": "application/json"]
        configuration.allowsCellularAccess = true
        configuration.timeoutIntervalForRequest = 30
        self.session = URLSession(configuration: configuration)
    }
    
    func fetch(completion: @escaping((Result<GithubSwiftResponse, GithubSwiftError>) -> Void)) {
        guard let url = URL(string: ROOT_URL + page + perPage) else {
            return completion(.failure(.badURL))
        }
        
        let task = self.session.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                return completion(.failure(.taskError))
            }
            
            guard let response = response as? HTTPURLResponse else {
                return completion(.failure(.noResponse))
            }
            
            if !(200...299 ~= response.statusCode) {
                return completion(.failure(.invalidStatusCode(response.statusCode)))
            }
            
            guard let data = data else {
                return completion(.failure(.noData))
            }
            
            do {
                let githubSwiftResponse = try JSONDecoder().decode(GithubSwiftResponse.self, from: data)
                completion(.success(githubSwiftResponse))
            } catch {
                return completion(.failure(.invalidJSON))
            }
        }
        task.resume()
    }
}
