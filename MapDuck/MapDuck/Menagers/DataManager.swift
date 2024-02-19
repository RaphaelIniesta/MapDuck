//
//  DataMenager.swift
//  MapDuck
//
//  Created by Raphael Iniesta Reis on 18/02/24.
//

import Foundation
import SwiftData

@Model
class DataManager: Identifiable {
    var title: String
    var memorie: String
    var lat: Double
    var long: Double
    var date: String
    
    init(title: String, memorie: String, lat: Double, long: Double, date: String) {
        self.title = title
        self.memorie = memorie
        self.lat = lat
        self.long = long
        self.date = date
    }
}
