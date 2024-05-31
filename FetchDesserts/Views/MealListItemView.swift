//
//  MealListItemView.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 5/31/24.
//

import SwiftUI

struct MealListItemView: View {
    let meal: Meal
    
    var body: some View {
        HStack {
            Text(meal.strMeal)
            Spacer()
            AsyncImage(url: URL(string: meal.strMealThumb)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(12)
                    .frame(width: 96, height: 88)
                    .clipped()
            } placeholder: {
                
            }
            .frame(width: 96, height: 88)
            .padding()
        }
    }
}


#Preview {
    MealListItemView(meal: Meal.example)
}

