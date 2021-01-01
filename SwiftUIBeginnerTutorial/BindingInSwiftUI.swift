//
//  BindingInSwiftUI.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct BindingInSwiftUI: View {
    
    var recipes = Recipe.allRecipes()
    @State var showIngredients = false
    
    
    var body: some View {
        
        VStack{
            
            Toggle(isOn: $showIngredients, label: {
                Text("Show Ingredients")
            }).padding()
            
            List{
                ForEach(recipes) {
                    recipe in
                    RecipeCell(recipe: recipe, showIngredients: self.$showIngredients)
                }
            }
        }
    }
}

struct RecipeCell: View {
    var recipe: Recipe
    @Binding var showIngredients: Bool
    
    var body: some View {
        Group{
            Text(recipe.name)
                .foregroundColor(.blue)
            
            if self.showIngredients {
                Text(recipe.ingredients.joined(separator: "\n"))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct BindingInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        BindingInSwiftUI()
    }
}
