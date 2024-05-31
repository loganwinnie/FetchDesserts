//
//  MealView.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 5/31/24.
//

import SwiftUI

struct MealDetailView: View {
    let mealId: String
    
    @ObservedObject var viewModel: MealDetailViewViewModel
    
    init(mealId: String) {
        self.mealId = mealId
        self.viewModel = MealDetailViewViewModel(mealId: mealId)
    }
    

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                VStack {
                    Text("\(viewModel.mealDetails?.strMeal ?? "Meal Name Not Found")")
                        .font(.title.bold())
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    if let thumbNailImage = viewModel
                        .mealDetails?.strMealThumb {
                        AsyncImage(url: URL(string: thumbNailImage)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                                
                        } placeholder: {
                            
                        }
                    }
                }
                Text("Instructions")
                    .font(.title.bold())
                    
                Text("\(viewModel.mealDetails?.strInstructions ?? "")")
                    .font(.system(size: 16, weight: .regular, design: .default))

                VStack(alignment: .leading,  spacing: 10) {
                    Text("Ingredients")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                        .padding(.vertical)
                    
                    ForEach(viewModel.mealDetails?.ingredientMeasurements ?? [], id: \.ingredient) {(ingredient, measurement) in
                        HStack {
                            Text(ingredient)
                            Spacer()
                            Text(measurement)
                        }
                        Divider()
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    MealDetailView(mealId: "52894")
}
