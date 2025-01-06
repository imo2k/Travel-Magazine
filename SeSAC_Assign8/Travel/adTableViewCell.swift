//
//  adTableViewCell.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/6/25.
//

import UIKit

class adTableViewCell: UITableViewCell {

    static let id = "adCell"
    var resource = TravelInfo().travel
    
    @IBOutlet var adLabel: UILabel!
    
    @IBOutlet var adMessage: UILabel!
    
    @IBOutlet var adBackgroundView: UIView!
    
    
    @IBOutlet var adView: UIView!
    
    override func awakeFromNib() {
        configureTrue()
    }
    
    func configureTrue() {
        adLabel.font = .systemFont(ofSize: 15)
        adMessage.font = .boldSystemFont(ofSize: 18)
        adMessage.numberOfLines = 0
        adMessage.textAlignment = .center
        
        
        let colors: [UIColor] = [.red, .green, .blue, .yellow, .purple, .lightGray]
        
        adBackgroundView.backgroundColor = colors.randomElement()!
        adBackgroundView.layer.cornerRadius = 10
        
        adLabel.layer.cornerRadius = 15
        adLabel.backgroundColor = .white
    }
    
    func configureDataTrue(row: Travel) {
        adMessage.text = row.title
    }
}
