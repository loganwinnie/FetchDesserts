//
//  ListView.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 5/31/24.
//

import SwiftUI

struct MealListView: View {
    @StateObject var viewModel = MealListViewViewModel()
    
    var body: some View {


        NavigationView {
            List {
                Text("Just Desserts")
                    .padding(.vertical)
                    .font(.title.bold())
                ForEach(viewModel.mealsList, id: \.idMeal) { meal in
                    NavigationLink(destination: MealDetailView(mealId: meal.idMeal)) {
                        MealListItemView(meal: meal)
                        }
                    }
                }
        } 
        .overlay {
            if let error = viewModel.errorMessage {
                Text(error)
            }
        }
        }
    }

#Preview {
    MealListView()
}

