//
//  SettingsView.swift
//  Recetas
//
//  Created by Eduardo Ceron on 22/02/22.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Aguacates".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section(header: Text("Ajustes Generales")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Permitir notificaciones")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Actualizar fondo")
                    }
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Aplicación")) {
                    if enableNotification {
                        HStack {
                            Text("Producto").foregroundColor(Color.gray)
                            Spacer()
                            Text("Recetas de Aguacate")
                        }
                        HStack {
                            Text("Compatibilidad").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Desarrollador").foregroundColor(Color.gray)
                            Spacer()
                            Text("Ing. Ceron")
                        }
                        HStack {
                            Text("Diseñador").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("ingceron.com")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
