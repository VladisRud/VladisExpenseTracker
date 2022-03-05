//
//  CategoryCell.swift
//  VladisExpenseTracker
//
//  Created by Влад Руденко on 22.02.2022.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
