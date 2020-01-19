//
//  Decoders.swift
//  API
//
//  Created by Ali Gungor on 19.01.2020.
//  Copyright © 2020 Ali Gungor. All rights reserved.
//

import Foundation

public enum Decoders {
    public static let plainDateDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()
}
