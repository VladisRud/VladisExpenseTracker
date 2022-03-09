//
//  ActivitiesViewController.swift
//  VladisExpenseTracker
//
//  Created by Влад Руденко on 09.02.2022.
//

import UIKit

class ActivitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ActivitiesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ExpanseModel.delegateModel.historyOfOperation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath)
        
        cell.textLabel?.text = ExpanseModel.delegateModel.historyOfOperation[indexPath.row].nameOfCategory
        
        return cell
    }
    
}
