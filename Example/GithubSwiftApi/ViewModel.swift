//
//  ViewModel.swift
//  GithubSwiftApi_Example
//
//  Created by Cleilton Feitosa on 13/11/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import GithubSwiftApi

protocol ViewModelDelegate: AnyObject {
    func didLoad()
    func fetchFailled(message: String)
    func showLoading()
    func hideLoading()
    func didLoadImage(data: Data)
}

class ViewModel {
    weak var delegate: ViewModelDelegate?
    private var data: [(id: String, value: String)] = []
    private var noMoreData = false
    let api: GithubSwiftProtocol = GithubSwiftApi()
    var firstImageURL = ""
    
    var count: Int {
        return self.data.count
    }
    
    func getCellData(from indexPath: IndexPath) -> (id: String, value: String)? {
        if indexPath.row < data.count {
            return data[indexPath.row]
        }
        return nil
    }
    
    func fetchData() {
        if self.noMoreData {
            return
        }
        self.delegate?.showLoading()
        let page = self.data.count == 0 ? "1" : "\((self.data.count/10) + 1)"
        api.fetch(page: page) { [weak self] result in
            switch result {
            case .success(let data):
                self?.firstImageURL = data.items.first?.owner.avatarURL ?? ""
                self?.data += data.items.compactMap{ (id: "\($0.id)", value: $0.name) }
                self?.delegate?.didLoad()
            case .failure(let error):
                switch error {
                case .noMorePages:
                    self?.noMoreData = true
                    break
                default:
                    self?.delegate?.fetchFailled(message: error.localizedDescription)
                }
            }
            self?.delegate?.hideLoading()
        }
    }
    
    func reset() {
        self.data = []
        self.noMoreData = false
        self.fetchData()
    }
    
    func getImage() {
        let apiMock = self.firstImageURL.isEmpty ? GithubSwiftMockApi() : self.api
        apiMock.getImage(url: self.firstImageURL) { [weak self] result in
            switch result {
            case .success(let data):
                self?.delegate?.didLoadImage(data: data)
            case .failure(_):
                break
            }
        }
    }
}
