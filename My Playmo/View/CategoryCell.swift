//
//  CategoryCell.swift
//  My Playmo
//
//  Created by Rodolphe DUPUY on 03/09/2020.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var catIV: UIImageView!
    @IBOutlet weak var catLbl: UILabel!
    
    var category: PlaymobilCategory! {
        didSet {
            catLbl.text = category.rawValue
            catIV.image = category.toImage()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
