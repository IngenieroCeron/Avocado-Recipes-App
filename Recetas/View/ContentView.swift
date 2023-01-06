//
//  ContentView.swift
//  Recetas
//
//  Created by Eduardo Ceron on 22/02/22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [RecipeModel] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                //MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                        
                    }
                }
                
                //MARK: - DISHESVIEW
                
                Text("Platillos")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                //MARK: - FACTS
                
                Text("Sabias que?")
                    .bold()
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                //MARK: - RECIPE CARD
                
                Text("Recetas")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                //MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("Todo Sobre Aguacates")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Todo lo que habias querido saber acerca del aguacate pero te daba miedo preguntar.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }//: VSTACK
                .frame( maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//: VSTACK
        }//: SCROLL
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, recipes: recipesData)
    }
}
