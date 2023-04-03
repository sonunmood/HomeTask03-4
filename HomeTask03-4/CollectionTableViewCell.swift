//
//  GoodsTableViewCell.swift
//  HomeTask03-4
//
//  Created by Sonun on 18/3/23.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var furnitureImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var itemQuantity: UILabel!
    
    
    func initCell (image: String, title: String, quantity: String) {
        furnitureImage.image = UIImage(named: image)
        titleLabel.text = title
        itemQuantity.text = quantity
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
