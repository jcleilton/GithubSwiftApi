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
    public let gitURL, sshURL: String
    public let cloneURL: String
    public let svnURL: String
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
            id: 1, nodeID: "", name: "Testing", fullName: "Testing McTest",
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
            releasesURL: "", deploymentsURL: "",
            gitURL: "", sshURL: "", cloneURL: "",
            svnURL: "", size: 123, stargazersCount: 4,
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
    
    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case itemPrivate = "private"
        case owner
        case htmlURL = "html_url"
        case itemDescription = "description"
        case fork, url
        case forksURL = "forks_url"
        case keysURL = "keys_url"
        case collaboratorsURL = "collaborators_url"
        case teamsURL = "teams_url"
        case hooksURL = "hooks_url"
        case issueEventsURL = "issue_events_url"
        case eventsURL = "events_url"
        case assigneesURL = "assignees_url"
        case branchesURL = "branches_url"
        case tagsURL = "tags_url"
        case blobsURL = "blobs_url"
        case gitTagsURL = "git_tags_url"
        case gitRefsURL = "git_refs_url"
        case treesURL = "trees_url"
        case statusesURL = "statuses_url"
        case languagesURL = "languages_url"
        case stargazersURL = "stargazers_url"
        case contributorsURL = "contributors_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case commitsURL = "commits_url"
        case gitCommitsURL = "git_commits_url"
        case commentsURL = "comments_url"
        case issueCommentURL = "issue_comment_url"
        case contentsURL = "contents_url"
        case compareURL = "compare_url"
        case mergesURL = "merges_url"
        case archiveURL = "archive_url"
        case downloadsURL = "downloads_url"
        case issuesURL = "issues_url"
        case pullsURL = "pulls_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case labelsURL = "labels_url"
        case releasesURL = "releases_url"
        case deploymentsURL = "deployments_url"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case svnURL = "svn_url"
        case size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasDownloads = "has_downloads"
        case hasWiki = "has_wiki"
        case hasPages = "has_pages"
        case forksCount = "forks_count"
        case archived, disabled
        case openIssuesCount = "open_issues_count"
        case license, forks
        case openIssues = "open_issues"
        case watchers
        case defaultBranch = "default_branch"
        case score
    }
}
