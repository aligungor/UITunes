//
//  Result.swift
//  API
//
//  Created by Ali Gungor on 19.01.2020.
//  Copyright © 2020 Ali Gungor. All rights reserved.
//

import Foundation

public enum Result<Value> {
    case success(Value)
    case failure(Error)
}
