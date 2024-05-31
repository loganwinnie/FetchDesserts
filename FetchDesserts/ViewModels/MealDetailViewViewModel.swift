//
//  MealDetailViewViewModel.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 6/3/24.
//

import Foundation

class MealDetailViewViewModel: ObservableObject {
    @Published var mealDetails: MealDetails?
    @Published var errorMessage: String?
    
    private let service = MealDataService()
    
    init(mealId: String) {
        fetchMealDetails(id: mealId)
    }
    
    func fetchMealDetails(id: String) {
        service.fetchMealDetails(id: id) {
            [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let meal):
                    self?.mealDetails = meal
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
