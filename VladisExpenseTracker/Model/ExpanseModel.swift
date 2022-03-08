//
//  ExpanseModel.swift
//  VladisExpenseTracker
//
//  Created by Влад Руденко on 09.02.2022.
//

import Foundation


struct ExpanseModel {
    
    var category = [
        ParametrExpanse(nameOfCategory: "Продукты", costOfCategory: 0.0),
        ParametrExpanse(nameOfCategory: "Товары для дома", costOfCategory: 0.0),
        ParametrExpanse(nameOfCategory: "Кот", costOfCategory: 0.0),
        ParametrExpanse(nameOfCategory: "Развлечения", costOfCategory: 0.0)
    ]
    
    var sumOfCost = 0.0
    
    mutating func summaOfCost() -> Double {
        sumOfCost = 0.0
        category.forEach { cost in
            sumOfCost += cost.costOfCategory
        }
        return sumOfCost
    }
    
    mutating func addCost(rowIndex: Int, newCost: Double) {
        category[rowIndex].costOfCategory += newCost
    }
    
    var historyOfOperation = [ParametrExpanse]()
    
    mutating func addHistory(name: String, cost: Double) {
        historyOfOperation.append(ParametrExpanse(nameOfCategory: name, costOfCategory: cost))
    }
    
}
