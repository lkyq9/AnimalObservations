//
//  AnimalEventTableViewCell.swift
//  Field Survey
//
//  Created by Lydia Krasucki on 11/3/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

class AnimalEventTableViewCell: UITableViewCell {

    @IBOutlet weak var animaliconimage: UIImageView!
    
    @IBOutlet weak var titleicon: UILabel!
    
    @IBOutlet weak var dateiconview: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
