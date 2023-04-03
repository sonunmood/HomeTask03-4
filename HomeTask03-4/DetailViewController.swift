//
//  DetailViewController.swift
//  HomeTask03-4
//
//  Created by Sonun on 21/3/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productDetailLbl: UILabel!
    @IBOutlet weak var roomTypeLbl: NSLayoutConstraint!
    @IBOutlet weak var colorLbl: UILabel!
    @IBOutlet weak var materialLbl: UILabel!
    @IBOutlet weak var dimensionsLbl: UILabel!
    @IBOutlet weak var weightlbl: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
