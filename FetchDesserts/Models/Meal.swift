//
//  Meal.swift
//  FetchDesserts
//
//  Created by Logan Winnie on 6/2/24.
//

import Foundation

struct Meal: Codable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
    
    static let example = Meal(strMeal: "Apam balik", strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg", idMeal: "53049")
}

//Meals as recieved by API
struct Meals: Codable {
    let meals: [Meal]
}

struct MealDetails: Codable {
    let idMeal: String
    let strMeal: String?
    let strInstructions: String?
    let strMealThumb: String?
    let strTags: String?
    let strYoutube:   String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    
    func formatIngredients() -> [(ingredient:String, measurement:String )] {
        /**
         Function that creates an Array of Tuples of Ingredient measurement pairs for display
         ** Side note of thought process **
         Hard Coded for each value for sake of time because always 20 ingredient measurement
         pairs provided and could not think of  way to be able to get values dynamically.
         
         */
        var formatted: [(ingredient:String, measurement:String )] = []
        
        if let ingredient1 = strIngredient1.self, let measurement1 = strMeasure1.self {
            if ingredient1.isEmpty != true {
            formatted.append((ingredient: ingredient1, measurement: measurement1))
            }
        }
        
        if let ingredient2 = strIngredient2.self, let measurement2 = strMeasure2.self {
            if ingredient2.isEmpty != true {
                
                formatted.append((ingredient: ingredient2, measurement: measurement2))
            }
        }
        
        if let ingredient3 = strIngredient3.self, let measurement3 = strMeasure3.self {
            if ingredient3.isEmpty != true {
                formatted.append((ingredient: ingredient3, measurement: measurement3))
            }
        }
        
        if let ingredient4 = strIngredient4.self, let measurement4 = strMeasure4.self {
            if ingredient4.isEmpty != true {
                formatted.append((ingredient: ingredient4, measurement: measurement4))
            }
        }
        
        if let ingredient5 = strIngredient5.self, let measurement5 = strMeasure5.self {
            if ingredient5.isEmpty != true {
                formatted.append((ingredient: ingredient5, measurement: measurement5))
            }
        }
        
        if let ingredient6 = strIngredient6.self, let measurement6 = strMeasure6.self {
            if ingredient6.isEmpty != true {
                formatted.append((ingredient: ingredient6, measurement: measurement6))
            }
        }
        
        if let ingredient7 = strIngredient7.self, let measurement7 = strMeasure7.self {
            if ingredient7.isEmpty != true {
                formatted.append((ingredient: ingredient7, measurement: measurement7))
            }
        }
        if let ingredient8 = strIngredient8.self, let measurement8 = strMeasure8.self {
            if ingredient8.isEmpty != true {
                formatted.append((ingredient: ingredient8, measurement: measurement8))
            }
        }
        
        if let ingredient9 = strIngredient9.self, let measurement9 = strMeasure9.self {
            if ingredient9.isEmpty != true {
                formatted.append((ingredient: ingredient9, measurement: measurement9))
            }
        }
        
        if let ingredient10 = strIngredient10.self, let measurement10 = strMeasure10.self {
            if ingredient10.isEmpty != false {
                formatted.append((ingredient: ingredient10, measurement: measurement10))
            }
        }
        
        if let ingredient11 = strIngredient11.self, let measurement11 = strMeasure11.self {
            if ingredient11.isEmpty != true {
                formatted.append((ingredient: ingredient11, measurement: measurement11))
            }
        }
        
        if let ingredient12 = strIngredient12.self, let measurement12 = strMeasure12.self {
            if ingredient12.isEmpty != true {
                formatted.append((ingredient: ingredient12, measurement: measurement12))
            }
        }
        
        if let ingredient13 = strIngredient13.self, let measurement13 = strMeasure13.self {
            if ingredient13.isEmpty != true {
                formatted.append((ingredient: ingredient13, measurement: measurement13))
            }
        }
        
        if let ingredient14 = strIngredient14.self, let measurement14 = strMeasure14.self {
            if ingredient14.isEmpty != true {
                formatted.append((ingredient: ingredient14, measurement: measurement14))
            }
        }
        
        if let ingredient15 = strIngredient15.self, let measurement15 = strMeasure15.self {
            if ingredient15.isEmpty != true {
                formatted.append((ingredient: ingredient15, measurement: measurement15))
            }
        }
        
        if let ingredient16 = strIngredient16.self, let measurement16 = strMeasure16.self {
            if ingredient16.isEmpty != true {
                formatted.append((ingredient: ingredient16, measurement: measurement16))
            }
        }
        
        if let ingredient17 = strIngredient17.self, let measurement17 = strMeasure17.self {
            if ingredient17.isEmpty != true {
                formatted.append((ingredient: ingredient17, measurement: measurement17))
            }
        }
        
        if let ingredient18 = strIngredient18.self, let measurement18 = strMeasure18.self {
            if ingredient18.isEmpty != true {
                formatted.append((ingredient: ingredient18, measurement: measurement18))
            }
        }
        
        if let ingredient19 = strIngredient19.self, let measurement19 = strMeasure19.self {
            if ingredient19.isEmpty != true {
                formatted.append((ingredient: ingredient19, measurement: measurement19))
            }
        }
        
        if let ingredient20 = strIngredient20.self, let measurement20 = strMeasure20.self {
            if ingredient20.isEmpty != true {
                formatted.append((ingredient: ingredient20, measurement: measurement20))
            }
        }
        
        return formatted
    }
}

extension MealDetails {
    var ingredientMeasurements: [(ingredient:String, measurement:String )] {return formatIngredients()}
}


struct MealDetailsJSON: Codable {
    let meals: [MealDetails]
}

enum MealAPIError: Error {
    case InvalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    
    var customDescription: String {
        switch self {
        case .InvalidData: return "Invalid Data"
        case .jsonParsingFailure: return "Failed to Parse JSON"
        case let .requestFailed(description): return "Request failed. \(description)"
        case let .invalidStatusCode(statusCode): return "Request failed with status code: \(statusCode)"
        case let .unknownError(error): return "A unknown error occured. Error>: \(error)"
        }
    }
}
