//
//  HeaderModel.swift
//  Recetas
//
//  Created by Eduardo Ceron on 06/09/22.
//

import Foundation

//MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
