//
//  RipeningModel.swift
//  Recetas
//
//  Created by Eduardo Ceron on 07/09/22.
//

import SwiftUI

struct RipeningModel: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
