//
//  AppView.swift
//  Recetas
//
//  Created by Eduardo Ceron on 22/02/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Aguacate")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recetas")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Madurez")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Ajustes")
                }
        }
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .preferredColorScheme(.dark)
    }
}
