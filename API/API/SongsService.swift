//
//  SongService.swift
//  API
//
//  Created by Ali Gungor on 19.01.2020.
//  Copyright © 2020 Ali Gungor. All rights reserved.
//

import Alamofire

public class SongsService {
    
    public enum Error: Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public static func getSongs(completion: @escaping (Result<SongsResponse>) -> Void) {
        let url = "https://rss.itunes.apple.com/api/v1/us/apple-music/hot-tracks/all/50/explicit.json"
        
        Alamofire.request(url).responseData { (response) in
            switch response.result {
            case .success(let data):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(SongsResponse.self, from: data)
                    completion(.success(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }
            case .failure(let error):
                completion(.failure(Error.networkError(internal: error)))
            }
        }
    }
    
}
