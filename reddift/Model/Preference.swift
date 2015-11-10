//
//  Preference.swift
//  reddift
//
//  Created by sonson on 2015/11/10.
//  Copyright © 2015年 sonson. All rights reserved.
//

import Foundation

/**
 */
public enum PreferenceDefaultCommentSortType : String {
    case Confidence     = "confidence"
    case Old            = "old"
    case Top            = "top"
    case Qa             = "qa"
    case Controversial  = "controversial"
    case New            = "new"
    
    public init(_ value:String) {
        switch(value) {
        case "confidence":
            self = .Confidence
        case "old":
            self = .Old
        case "top":
            self = .Top
        case "qa":
            self = .Qa
        case "controversial":
            self = .Controversial
        case "new":
            self = .New
        default:
            self = .Confidence
        }
    }
}

/**
 */
public enum PreferenceMediaType : String {
    case On         = "on"
    case Off        = "off"
    case Subreddit  = "subreddit"
    
    public init(_ value:String) {
        switch(value) {
        case "on":
            self = .On
        case "off":
            self = .Off
        case "subreddit":
            self = .Subreddit
        default:
            self = .On
        }
    }
}

/**
 Preference class.
 */
public struct Preference {
    let beta:Bool?
    let clickgadget:Bool?
    let collapseReadMessages:Bool?
    let compress:Bool?
    let credditAutorenew:Bool?
    let defaultCommentSort:PreferenceDefaultCommentSortType?
    let domainDetails:Bool?
    let emailMessages:Bool?
    let enableDefaultThemes:Bool?
    let hideAds:Bool?
    let hideDowns:Bool?
    let hideFromRobots:Bool?
    let hideLocationbar:Bool?
    let hideUps:Bool?
    let highlightControversial:Bool?
    let highlightNewComments:Bool?
    let ignoreSuggestedSort:Bool?
    let labelNsfw:Bool?
    let lang:String?
    let legacySearch:Bool?
    let markMessagesRead:Bool?
    let media:PreferenceMediaType?
    let minCommentScore:Int?
    let minLinkScore:Int?
    let monitorMentions:Bool?
    let newwindow:Bool?
    let noProfanity:Bool?
    let numComments:Int?
    let numsites:Int?
    let organic:Bool?
    let otherTheme:String?
    let over18:Bool?
    let privateFeeds:Bool?
    let publicVotes:Bool?
    let research:Bool?
    let showFlair:Bool?
    let showGoldExpiration:Bool?
    let showLinkFlair:Bool?
    let showPromote:Bool?
    let showStylesheets:Bool?
    let showTrending:Bool?
    let storeVisits:Bool?
    let themeSelector:String?
    let threadedMessages:Bool?
    let threadedModmail:Bool?
    let useGlobalDefaults:Bool?
    public func json() -> [String:AnyObject] {
        var json:[String:AnyObject] = [:]
        if let temp = beta { json["beta"] = temp }
        if let temp = clickgadget { json["clickgadget"] = temp }
        if let temp = collapseReadMessages { json["collapse_read_messages"] = temp }
        if let temp = compress { json["compress"] = temp }
        if let temp = credditAutorenew { json["creddit_autorenew"] = temp }
        if let temp = defaultCommentSort { json["default_comment_sort"] = temp.rawValue }
        if let temp = domainDetails { json["domain_details"] = temp }
        if let temp = emailMessages { json["email_messages"] = temp }
        if let temp = enableDefaultThemes { json["enable_default_themes"] = temp }
        if let temp = hideAds { json["hide_ads"] = temp }
        if let temp = hideDowns { json["hide_downs"] = temp }
        if let temp = hideFromRobots { json["hide_from_robots"] = temp }
        if let temp = hideLocationbar { json["hide_locationbar"] = temp }
        if let temp = hideUps { json["hide_ups"] = temp }
        if let temp = highlightControversial { json["highlight_controversial"] = temp }
        if let temp = highlightNewComments { json["highlight_new_comments"] = temp }
        if let temp = ignoreSuggestedSort { json["ignore_suggested_sort"] = temp }
        if let temp = labelNsfw { json["label_nsfw"] = temp }
        if let temp = lang { json["lang"] = temp }
        if let temp = legacySearch { json["legacy_search"] = temp }
        if let temp = markMessagesRead { json["mark_messages_read"] = temp }
        if let temp = media { json["media"] = temp.rawValue }
        if let temp = minCommentScore { json["min_comment_score"] = temp }
        if let temp = minLinkScore { json["min_link_score"] = temp }
        if let temp = monitorMentions { json["monitor_mentions"] = temp }
        if let temp = newwindow { json["newwindow"] = temp }
        if let temp = noProfanity { json["no_profanity"] = temp }
        if let temp = numComments { json["num_comments"] = temp }
        if let temp = numsites { json["numsites"] = temp }
        if let temp = organic { json["organic"] = temp }
        if let temp = otherTheme { json["other_theme"] = temp }
        if let temp = over18 { json["over_18"] = temp }
        if let temp = privateFeeds { json["private_feeds"] = temp }
        if let temp = publicVotes { json["public_votes"] = temp }
        if let temp = research { json["research"] = temp }
        if let temp = showFlair { json["show_flair"] = temp }
        if let temp = showGoldExpiration { json["show_gold_expiration"] = temp }
        if let temp = showLinkFlair { json["show_link_flair"] = temp }
        if let temp = showPromote { json["show_promote"] = temp }
        if let temp = showStylesheets { json["show_stylesheets"] = temp }
        if let temp = showTrending { json["show_trending"] = temp }
        if let temp = storeVisits { json["store_visits"] = temp }
        if let temp = themeSelector { json["theme_selector"] = temp }
        if let temp = threadedMessages { json["threaded_messages"] = temp }
        if let temp = threadedModmail { json["threaded_modmail"] = temp }
        if let temp = useGlobalDefaults { json["use_global_defaults"] = temp }
        return json
    }
    public init(json:[String:AnyObject]) {
        self.beta = json["beta"] as? Bool
        self.clickgadget = json["clickgadget"] as? Bool
        self.collapseReadMessages = json["collapse_read_messages"] as? Bool
        self.compress = json["compress"] as? Bool
        self.credditAutorenew = json["creddit_autorenew"] as? Bool
        if let temp = json["default_comment_sort"] as? String { self.defaultCommentSort = PreferenceDefaultCommentSortType(temp) }
        else { self.defaultCommentSort = nil }
        self.domainDetails = json["domain_details"] as? Bool
        self.emailMessages = json["email_messages"] as? Bool
        self.enableDefaultThemes = json["enable_default_themes"] as? Bool
        self.hideAds = json["hide_ads"] as? Bool
        self.hideDowns = json["hide_downs"] as? Bool
        self.hideFromRobots = json["hide_from_robots"] as? Bool
        self.hideLocationbar = json["hide_locationbar"] as? Bool
        self.hideUps = json["hide_ups"] as? Bool
        self.highlightControversial = json["highlight_controversial"] as? Bool
        self.highlightNewComments = json["highlight_new_comments"] as? Bool
        self.ignoreSuggestedSort = json["ignore_suggested_sort"] as? Bool
        self.labelNsfw = json["label_nsfw"] as? Bool
        self.lang = json["lang"] as? String
        self.legacySearch = json["legacy_search"] as? Bool
        self.markMessagesRead = json["mark_messages_read"] as? Bool
        if let temp = json["media"] as? String { self.media = PreferenceMediaType(temp) }
        else { self.media = nil }
        self.minCommentScore = json["min_comment_score"] as? Int
        self.minLinkScore = json["min_link_score"] as? Int
        self.monitorMentions = json["monitor_mentions"] as? Bool
        self.newwindow = json["newwindow"] as? Bool
        self.noProfanity = json["no_profanity"] as? Bool
        self.numComments = json["num_comments"] as? Int
        self.numsites = json["numsites"] as? Int
        self.organic = json["organic"] as? Bool
        self.otherTheme = json["other_theme"] as? String
        self.over18 = json["over_18"] as? Bool
        self.privateFeeds = json["private_feeds"] as? Bool
        self.publicVotes = json["public_votes"] as? Bool
        self.research = json["research"] as? Bool
        self.showFlair = json["show_flair"] as? Bool
        self.showGoldExpiration = json["show_gold_expiration"] as? Bool
        self.showLinkFlair = json["show_link_flair"] as? Bool
        self.showPromote = json["show_promote"] as? Bool
        self.showStylesheets = json["show_stylesheets"] as? Bool
        self.showTrending = json["show_trending"] as? Bool
        self.storeVisits = json["store_visits"] as? Bool
        self.themeSelector = json["theme_selector"] as? String
        self.threadedMessages = json["threaded_messages"] as? Bool
        self.threadedModmail = json["threaded_modmail"] as? Bool
        self.useGlobalDefaults = json["use_global_defaults"] as? Bool
    }
    public init(
        beta:Bool? = nil,
        clickgadget:Bool? = nil,
        collapseReadMessages:Bool? = nil,
        compress:Bool? = nil,
        credditAutorenew:Bool? = nil,
        defaultCommentSort:PreferenceDefaultCommentSortType? = nil,
        domainDetails:Bool? = nil,
        emailMessages:Bool? = nil,
        enableDefaultThemes:Bool? = nil,
        hideAds:Bool? = nil,
        hideDowns:Bool? = nil,
        hideFromRobots:Bool? = nil,
        hideLocationbar:Bool? = nil,
        hideUps:Bool? = nil,
        highlightControversial:Bool? = nil,
        highlightNewComments:Bool? = nil,
        ignoreSuggestedSort:Bool? = nil,
        labelNsfw:Bool? = nil,
        lang:String? = nil,
        legacySearch:Bool? = nil,
        markMessagesRead:Bool? = nil,
        media:PreferenceMediaType? = nil,
        minCommentScore:Int? = nil,
        minLinkScore:Int? = nil,
        monitorMentions:Bool? = nil,
        newwindow:Bool? = nil,
        noProfanity:Bool? = nil,
        numComments:Int? = nil,
        numsites:Int? = nil,
        organic:Bool? = nil,
        otherTheme:String? = nil,
        over18:Bool? = nil,
        privateFeeds:Bool? = nil,
        publicVotes:Bool? = nil,
        research:Bool? = nil,
        showFlair:Bool? = nil,
        showGoldExpiration:Bool? = nil,
        showLinkFlair:Bool? = nil,
        showPromote:Bool? = nil,
        showStylesheets:Bool? = nil,
        showTrending:Bool? = nil,
        storeVisits:Bool? = nil,
        themeSelector:String? = nil,
        threadedMessages:Bool? = nil,
        threadedModmail:Bool? = nil,
        useGlobalDefaults:Bool? = nil
        ) {
            self.beta = beta
            self.clickgadget = clickgadget
            self.collapseReadMessages = collapseReadMessages
            self.compress = compress
            self.credditAutorenew = credditAutorenew
            self.defaultCommentSort = defaultCommentSort
            self.domainDetails = domainDetails
            self.emailMessages = emailMessages
            self.enableDefaultThemes = enableDefaultThemes
            self.hideAds = hideAds
            self.hideDowns = hideDowns
            self.hideFromRobots = hideFromRobots
            self.hideLocationbar = hideLocationbar
            self.hideUps = hideUps
            self.highlightControversial = highlightControversial
            self.highlightNewComments = highlightNewComments
            self.ignoreSuggestedSort = ignoreSuggestedSort
            self.labelNsfw = labelNsfw
            self.lang = lang
            self.legacySearch = legacySearch
            self.markMessagesRead = markMessagesRead
            self.media = media
            self.minCommentScore = minCommentScore
            self.minLinkScore = minLinkScore
            self.monitorMentions = monitorMentions
            self.newwindow = newwindow
            self.noProfanity = noProfanity
            self.numComments = numComments
            self.numsites = numsites
            self.organic = organic
            self.otherTheme = otherTheme
            self.over18 = over18
            self.privateFeeds = privateFeeds
            self.publicVotes = publicVotes
            self.research = research
            self.showFlair = showFlair
            self.showGoldExpiration = showGoldExpiration
            self.showLinkFlair = showLinkFlair
            self.showPromote = showPromote
            self.showStylesheets = showStylesheets
            self.showTrending = showTrending
            self.storeVisits = storeVisits
            self.themeSelector = themeSelector
            self.threadedMessages = threadedMessages
            self.threadedModmail = threadedModmail
            self.useGlobalDefaults = useGlobalDefaults
    }
}