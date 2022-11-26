//
//  TableViewCell.swift
//  MidExam
//
//  Created by prk on 22/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkoutImageView: UIImageView!
    @IBOutlet weak var checkoutPriceLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
