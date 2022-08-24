//
//  FoodTableViewCell.swift
//  DemoRX
//
//  Created by V000315 on 24/08/2022.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var lbFood: UILabel!
    @IBOutlet weak var imageFood: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
