//
//  MainViewController.swift
//  VladisExpenseTracker
//
//  Created by Влад Руденко on 09.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var model = ExpanseModel()
    
    @IBOutlet weak var ExpensesLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellReuseIdentifier: "CategoryCell")
        
        ExpensesLabel.text = String(format: "%.2f", model.summaOfCost())
        
    }
    
}

//MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.category.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        
        cell.leftLabel.text = model.category[indexPath.row].nameOfCategory
        
        cell.rightLabel.text = String(format: "%.2f", model.category[indexPath.row].costOfCategory)
        
        return cell
        
    }
    
}

//MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Сколько добавить к стоимости?", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Добавить", style: .default) { action in
            
            if let newCost = Double(textField.text!) {
                    self.model.addCost(rowIndex: indexPath.row, newCost: newCost)
                
            }
            
            self.tableView.reloadData()
            
            self.ExpensesLabel.text = String(format: "%.2f", self.model.summaOfCost())
            
        }
        
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Введите добавленную стоимость"
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
//        model.category[indexPath.row].costOfCategory = model.category[indexPath.row].costOfCategory + 5.0
        
//        tableView.reloadData()
        
//        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}
