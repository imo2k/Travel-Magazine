//
//  CityTableViewCell.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/6/25.
//

import UIKit
import Kingfisher

class CityTableViewCell: UITableViewCell {

    static let identifier = "CityTableViewCell"
    
    @IBOutlet var cellImageView: UIImageView!
    
    @IBOutlet var bottomBackgroundView: UIView!
    
    @IBOutlet var cityNameLabel: UILabel!
    
    @IBOutlet var cityListLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configure()
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        cellImageView.image = UIImage(systemName: "xmark")
    }
    private func configure() {
        cellImageView.layer.cornerRadius = 15
        cellImageView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMaxYCorner)
        bottomBackgroundView.backgroundColor = .black
        bottomBackgroundView.layer.opacity = 0.5
        bottomBackgroundView.layer.cornerRadius = 15
        bottomBackgroundView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMaxYCorner)
        cityNameLabel.textColor = .white
        cityNameLabel.font = .boldSystemFont(ofSize: 24)
        cityListLabel.textColor = .white
        cityListLabel.font = .systemFont(ofSize: 14)
        cityNameLabel.textAlignment = .right
        cityListLabel.textAlignment = .left
        
    }
    
    func configureData(row: City) {
        let image = row.city_image
        
        let url = URL(string: image)
        cellImageView.kf.setImage(with: url)
        
        cityNameLabel.text = "\(row.city_name) | \(row.city_english_name)"
        cityListLabel.text = row.city_explain
    }
    
    
    
}
