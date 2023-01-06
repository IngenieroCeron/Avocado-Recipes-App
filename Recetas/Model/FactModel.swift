//
//  FactModel.swift
//  Recetas
//
//  Created by Eduardo Ceron on 06/09/22.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
