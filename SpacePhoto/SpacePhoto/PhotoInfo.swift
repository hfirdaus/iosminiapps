//
//  PhotoInfo.swift
//  SpacePhoto
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import Foundation
struct PhotoInfo:Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "explanation"
        case url = "hdurl"
        case copyright = "copyright"
    }
    
    init(with decoder: Decoder) throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.url = try container.decode(URL.self, forKey: .url)
        self.copyright = try container.decode(String.self, forKey: .copyright)
    }
}
