//
//  MainViewController.swift
//  VladisExpenseTracker
//
//  Created by Влад Руденко on 09.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let category = ["Продукты", "Товары для дома", "Домашние питомцы", "Обучение"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
    }
    
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath)
        
        cell.textLabel?.text = category[indexPath.row]
        
        return cell
        
    }
    
}
