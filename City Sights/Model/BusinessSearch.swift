//
//  BusinessSearch.swift
//  City Sights
//
//  Created by Alex Cannizzo on 07/10/2021.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    var total = 0
    var region = Region()
    
}

struct Region: Decodable {
    var center = Coordinate()
}
