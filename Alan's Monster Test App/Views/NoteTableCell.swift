//
//  NoteTableCell.swift
//  Alan's Monster Test App
//
//  Created by alan on 3/21/18.
//  Copyright © 2018 alan. All rights reserved.
//

import UIKit

class NoteTableCell: UITableViewCell {
    
    @IBOutlet weak var noteTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
