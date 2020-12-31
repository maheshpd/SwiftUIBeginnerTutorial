//
//  ListSearchState.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct ListSearchState: View {
    
    var recipes = Recipe.allRecipes()
    @State private var searchTerm = ""
    
    var body: some View {
        VStack {
            ZStack(alignment: .trailing, content: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("search ingredients here", text: $searchTerm)
            }).padding()
            
            List{
                ForEach(recipes.filter({ recipes -> Bool in
                    if searchTerm.isEmpty {return true}
                    return recipes.ingredients.filter { ingredient -> Bool in
                        return ingredient.contains(searchTerm.lowercased())
                    }.count > 0
                })){
                    recipes in
                    Text(recipes.name)
                    Text(recipes.ingredients.joined(separator: "\n")).lineLimit(nil).font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
        }
    }
}

struct Recipe: Identifiable {
    var id: UUID = UUID()
    var name: String
    var ingredients: [String]
    
    static func allRecipes() -> [Recipe] {
        return[
            Recipe(name: "Fluffy French Toast", ingredients: [
            "1/4 cup all-purpose flour",
                "1 cup milk",
                "1 pinch salt",
                "3 eggs",
                "1/2 teaspoon ground cinnamon",
                "1 teaspoon vanilla extract",
                "1 tablespoon white sugar",
                "12 thick slices bread"
            ]),
            Recipe(name: "Crustless Spinach Quiche", ingredients: [
            "1 tablespoon vegetable oil",
                "1 onion, chopped",
                "1 (10 ounch) package frozen chopped spinach, thawed and drained",
                "5 eggs, beaten",
                "3 cups shredded Muenster cheese",
                "1/4 teaspoon salt",
                "1/8 teaspoon ground black pepper"
            ]),
            Recipe(name: "Pumpkin Pancakes", ingredients: [
                "1 1/2 cups milk",
                "1 cup pumpkin puree",
                "1 egg",
                "2 tablespoons vegetable oil",
                "2 tablespoons vinegar",
                "2 cups all-purpose flour",
                "3 tablespoons brown sugar",
                "2 teaspoons baking powder",
                "1 teaspoons baking soda",
                "1 teaspoons ground allspice",
                "1 teaspoons ground cinnnamon",
                "1/2 teaspoon ground ginger",
                "1/2 teaspoon salt"
            ])
        ]
    }
}

struct ListSearchState_Previews: PreviewProvider {
    static var previews: some View {
        ListSearchState()
    }
}
