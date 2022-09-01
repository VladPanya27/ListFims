//
//  Array + Ext.swift
//  ListFilms
//
//  Created by Vlad Panchenko on 01.09.2022.
//

import Foundation

extension Array where Element: Equatable {
    
    var unique: [Element] {
        return self.reduce([]){ $0.contains($1) ? $0 : $0 + [$1] }
    }
}
