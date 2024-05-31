//
//  MealListViewViewModel.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 5/31/24.
//

import Foundation

class MealListViewViewModel: ObservableObject {
    
    @Published var mealsList:[Meal] = []
    @Published var errorMessage: String?
    
    private let service = MealDataService()
    
    init() {
        fetchMeals(category: "Dessert")
    }
    
    func fetchMeals(category: String) {
        service.fetchMealsByCategory(category: category) {
            [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let meals):
                    self?.mealsList = meals
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
}
