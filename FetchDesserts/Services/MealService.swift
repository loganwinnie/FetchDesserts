//
//  MealService.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 6/3/24.
//

import Foundation

class MealDataService {
    
    private let baseURL = "https://themealdb.com/api/json/v1/1/"
    
    func fetchMealDetails(id:String, completion: @escaping(Result<MealDetails, MealAPIError>) ->Void) {
        let endpoint = "\(self.baseURL)lookup.php?i=\(id)"
        guard let url = URL(string: endpoint) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(.failure(.unknownError(error: error)))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(.requestFailed(description: "Request Failed")))
                return
            }
            
            guard httpResponse.statusCode == 200 else {
                completion(.failure(.invalidStatusCode(statusCode: httpResponse.statusCode)))
                return
            }
            
            guard let data = data else {
                completion(.failure(.InvalidData))
                return
            }
            do {
                let details = try JSONDecoder().decode(MealDetailsJSON.self, from: data)
                completion(.success(details.meals[0]))
            } catch {
                completion(.failure(.jsonParsingFailure))
            }
        }.resume()
    }
    
    func fetchMealsByCategory(category: String, completion: @escaping(Result<[Meal], MealAPIError>) -> Void) {
        let endpoint = "\(self.baseURL)filter.php?c=\(category)"
        guard let url = URL(string: endpoint) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    completion(.failure(.unknownError(error: error)))
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(.requestFailed(description: "Request Failed")))
                    return
                }
                
                guard httpResponse.statusCode == 200 else {
                    completion(.failure(.invalidStatusCode(statusCode: httpResponse.statusCode)))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(.InvalidData))
                    return
                }
                do {
                    let decoded = try JSONDecoder().decode(Meals.self, from: data)
                    completion(.success(decoded.meals))
                            
                } catch {
                    completion(.failure(.jsonParsingFailure))
                    return
                }
        }.resume()
    }
}
