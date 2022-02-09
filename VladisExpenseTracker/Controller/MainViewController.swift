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
        
    }
    
}

//MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.category.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath)
        
        cell.textLabel?.text = model.category[indexPath.row].nameOfCategory
        
        return cell
        
    }
    
}
