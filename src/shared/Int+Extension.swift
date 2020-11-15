//
//  Int+Extension.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 15/11/20.
//

import Foundation

extension Int {
    public func getTotalPage(from perPage: Int) -> Int {
        let modValue = self % perPage
        return modValue == 0 ? (self / perPage) : (self / perPage) + 1
    }
}
