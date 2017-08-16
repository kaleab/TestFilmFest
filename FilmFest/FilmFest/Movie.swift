//
//  Movie.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/16/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import Foundation

struct Movie {
    
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
