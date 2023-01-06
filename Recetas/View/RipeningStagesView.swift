//
//  RipeningStagesView.swift
//  Recetas
//
//  Created by Eduardo Ceron on 22/02/22.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [RipeningModel] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 0) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                    .padding(.horizontal, 25)
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
