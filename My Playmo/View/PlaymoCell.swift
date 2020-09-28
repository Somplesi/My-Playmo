//
//  PlaymoCell.swift
//  My Playmo
//
//  Created by Rodolphe DUPUY on 03/09/2020.
//

import UIKit

class PlaymoCell: UITableViewCell {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var playmoIV: UIImageView!
    @IBOutlet weak var playmoNameLbl: UILabel!
    @IBOutlet weak var refLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    var playmo: Playmobil!
    
    func setupCell(_ playmobil: Playmobil) {
        viewContainer.layer.cornerRadius = 10
        viewContainer.layer.shadowColor = UIColor.systemTeal.cgColor
        viewContainer.layer.shadowOffset = CGSize(width: 0, height: 3)
        viewContainer.layer.shadowOpacity = 0.75
        viewContainer.layer.shadowRadius = 5

        self.playmo = playmobil

        playmoIV.layer.cornerRadius = 10
        playmoIV.image = playmo.image

        playmoNameLbl.text = playmo.name

        refLbl.text = playmo.refString

        priceLbl.text = playmo.priceEuro()        
    }
    
    @IBAction func addToSelection(_ sender: Any) {
        playbobilSelected.append(playmo) // Ajout du Playmobil sélectionné
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
