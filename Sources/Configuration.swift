//
//  Configuration.swift
//  Contentful
//
//  Created by Boris Bügling on 18/08/15.
//  Copyright © 2015 Contentful GmbH. All rights reserved.
//

import Foundation

public struct Configuration {
    public var previewMode = false
    public var rateLimiting = false
    public var secure = true
    public var server = "cdn.contentful.com"
    public var userAgentClient = "contentful.swift/0.1.0"

    public var userAgent : String {
        var osName = "iOS"
        let osVersion = NSProcessInfo.processInfo().operatingSystemVersionString ?? "Unknown"

        #if os(OSX)
            osName = "OS X"
        #elseif os(tvOS)
            osName = "tvOS"
        #elseif os(watchOS)
            osName = "watchOS"
        #endif

        return "\(userAgentClient) (\(osName) \(osVersion))"
    }

    public init() {
    }
}
