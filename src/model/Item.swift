//
//  Item.swift
//  GithubSwiftApi
//
//  Created by Cleilton Feitosa on 13/11/20.
//

import Foundation

public struct Item: Codable {
    public let id: Int
    public let nodeID, name, fullName: String
    public let itemPrivate: Bool
    public let owner: Owner
    public let htmlURL: String
    public let itemDescription: String
    public let fork: Bool
    public let url, forksURL: String
    public let keysURL, collaboratorsURL: String
    public let teamsURL, hooksURL: String
    public let issueEventsURL: String
    public let eventsURL: String
    public let assigneesURL, branchesURL: String
    public let tagsURL: String
    public let blobsURL, gitTagsURL, gitRefsURL, treesURL: String
    public let statusesURL: String
    public let languagesURL, stargazersURL, contributorsURL, subscribersURL: String
    public let subscriptionURL: String
    public let commitsURL, gitCommitsURL, commentsURL, issueCommentURL: String
    public let contentsURL, compareURL: String
    public let mergesURL: String
    public let archiveURL: String
    public let downloadsURL: String
    public let issuesURL, pullsURL, milestonesURL, notificationsURL: String
    public let labelsURL, releasesURL: String
    public let deploymentsURL: String
    public let createdAt, updatedAt, pushedAt: Date
    public let gitURL, sshURL: String
    public let cloneURL: String
    public let svnURL: String
    public let homepage: String
    public let size, stargazersCount, watchersCount: Int
    public let language: String
    public let hasIssues, hasProjects, hasDownloads, hasWiki: Bool
    public let hasPages: Bool
    public let forksCount: Int
    public let archived, disabled: Bool
    public let openIssuesCount: Int
    public let license: License
    public let forks, openIssues, watchers: Int
    public let defaultBranch: String
    public let score: Int
    
    static func getMock() -> Item {
        Item(
            id: 1, nodeID: "", name: "", fullName: "",
            itemPrivate: false,
            owner: Owner(
                login: "", id: 12, nodeID: "", avatarURL: "",
                gravatarID: "", url: "", htmlURL: "",
                followersURL: "", followingURL: "", gistsURL: "",
                starredURL: "", subscriptionsURL: "", organizationsURL: "",
                reposURL: "", eventsURL: "", receivedEventsURL: "",
                type: "", siteAdmin: false),
            htmlURL: "", itemDescription: "",
            fork: true, url: "", forksURL: "", keysURL: "",
            collaboratorsURL: "", teamsURL: "", hooksURL: "", issueEventsURL: "",
            eventsURL: "", assigneesURL: "", branchesURL: "", tagsURL: "",
            blobsURL: "", gitTagsURL: "", gitRefsURL: "", treesURL: "",
            statusesURL: "", languagesURL: "", stargazersURL: "", contributorsURL: "",
            subscribersURL: "", subscriptionURL: "", commitsURL: "", gitCommitsURL: "",
            commentsURL: "", issueCommentURL: "", contentsURL: "", compareURL: "",
            mergesURL: "", archiveURL: "", downloadsURL: "", issuesURL: "",
            pullsURL: "", milestonesURL: "", notificationsURL: "", labelsURL: "",
            releasesURL: "", deploymentsURL: "", createdAt: Date(), updatedAt: Date(),
            pushedAt: Date(), gitURL: "", sshURL: "", cloneURL: "",
            svnURL: "", homepage: "", size: 123, stargazersCount: 4,
            watchersCount: 3, language: "Swift", hasIssues: true, hasProjects: true,
            hasDownloads: true, hasWiki: true, hasPages: true, forksCount: 2,
            archived: true, disabled: false, openIssuesCount: 3,
            license: License(
                key: "", name: "",
                spdxID: "", url: "",
                nodeID: ""),
            forks: 12, openIssues: 1, watchers: 10, defaultBranch: "",
            score: 5)
    }
}
