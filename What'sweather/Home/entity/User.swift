//
//  User.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 18/12/2020.
//

import Foundation

struct User: Codable {
    let name: String
    let latitude: Double
    let longitude: Double
    let country: String
    let isoCode: String
}
