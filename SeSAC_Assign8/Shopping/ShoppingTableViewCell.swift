//
//  ShoppingTableViewCell.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/5/25.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    static let id = "ShoppingTableViewController"
    
    var list = ShoppingList().shopping
    
    @IBOutlet var checkButton: UIButton!
    
    @IBOutlet var listLabel: UILabel!
    
    @IBOutlet var starButton: UIButton!
    
    override func awakeFromNib() {
        configure()
    }
    
    func configure() {
        backgroundColor = .systemGray5
        layer.cornerRadius = 10
        listLabel.font = .systemFont(ofSize: 14)
        
        // 버튼 디자인
        checkButton.tintColor = .black
        starButton.tintColor = .black
    }
    
    func configureData(row: Shopping) {
        listLabel.text = row.item
        
        // 구매 완료
        let check = row.check ? "checkmark.square" : "checkmark.square.fill"
        let checkBtn = UIImage(systemName: check)
        
        checkButton.setImage(checkBtn, for: .normal)
        
        
        // 즐겨찾기
        let favorite = row.star ? "star" : "star.fill"
        let starBtn = UIImage(systemName: favorite)
        
        starButton.setImage(starBtn, for: .normal)
        
    }
}
