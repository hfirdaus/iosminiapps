//
//  URL+Helpers.swift
//  SpacePhoto
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import Foundation

extension URL{
    func withQueries(_ query:[String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = query.map{ URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}
