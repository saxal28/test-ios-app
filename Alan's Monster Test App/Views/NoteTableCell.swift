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
    @IBOutlet weak var noteContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        noteContainer.layer.shadowColor = UIColor.darkGray.cgColor
        noteContainer.layer.shadowOpacity = 0.3
        noteContainer.layer.shadowOffset = CGSize.zero
        noteContainer.layer.shadowRadius = 3
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
