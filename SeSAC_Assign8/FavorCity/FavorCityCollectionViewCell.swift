//
//  FavorCityCollectionViewCell.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/7/25.
//

import UIKit

class FavorCityCollectionViewCell: UICollectionViewCell {

    @IBOutlet var cityImage: UIImageView!
    
    @IBOutlet var cityTitle: UILabel!
    
    @IBOutlet var citySubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cityImage.layer.cornerRadius = 37
        cityImage.clipsToBounds = true
        cityTitle.font = .boldSystemFont(ofSize: 15)
        citySubtitle.font = .systemFont(ofSize: 13)
        cityTitle.textAlignment = .center
        citySubtitle.textAlignment = .center
        citySubtitle.numberOfLines = 0
    }
    
    

}
