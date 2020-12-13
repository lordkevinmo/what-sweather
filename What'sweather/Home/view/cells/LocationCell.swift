//
//  LocationCell.swift
//  What'sweather
//
//  Created by Moïse AGBENYA on 13/12/2020.
//

import UIKit

class LocationCell: UICollectionViewCell {
    @IBOutlet weak var bckgdImg: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var climateImg: UIImageView!
    
    static let reuseIdentifier = "location-cell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
