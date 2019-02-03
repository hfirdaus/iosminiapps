import UIKit

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

extension URL{
    func withQueries(_ query:[String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = query.map{ URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

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

fetchPhotoInfo { (photoInfo) in
    if let photoInfo = photoInfo{
        print(photoInfo)
    }
}
