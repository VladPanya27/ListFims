//
//  Film.swift
//  ListFilms
//
//  Created by Vlad Panchenko on 01.09.2022.
//

import Foundation

final class Film: Equatable {

    var title: String
    var year: Int
    
    init(title: String, year: Int) {
        self.title = title
        self.year = year
    }

    static func ==(lhs: Film, rhs: Film) -> Bool {
    return lhs.title == rhs.title
    }

}
