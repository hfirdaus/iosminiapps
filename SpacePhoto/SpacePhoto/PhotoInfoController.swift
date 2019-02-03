//
//  PhotoInfoController.swift
//  SpacePhoto
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import Foundation


struct PhotoInfoController {
    func fetchPhotoInfo(completion: @escaping(PhotoInfo?) -> Void) {
        let baseURL = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!
        
        let queryArray: [String: String] = [
            "api_key":"c9DemVBkGelCwJd6Ko8fpMFtMshVLZMgpLoIQ3EV",
            "date":"2019-01-15",
            ]
        
        let searchURL = baseURL.withQueries(queryArray)!
        
        let task = URLSession.shared.dataTask(with: searchURL) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data, let photoInfo = try? jsonDecoder.decode(PhotoInfo.self, from: data){
                completion(photoInfo)
            }
            else {
                print("No data received or bad JSON data")
                completion(nil)
            }
        }
        task.resume()
        
    }
    
}
