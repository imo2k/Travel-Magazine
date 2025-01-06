//
//  TravelTableViewCell.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/5/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {
    
    static let id = "TravelTableViewController"
    var resource = TravelInfo().travel
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var travelImage: UIImageView!
    
    @IBOutlet var likeButton: UIButton!
    
    @IBOutlet var saveLabel: UILabel!
    
    override func awakeFromNib() {
        configureFalse()
    }
    
    func configureFalse() {
        // image 디자인
        travelImage.layer.cornerRadius = 10
        // ⚠️numberOfLines 적용안됨 이슈. (오토레이아웃 관련 문제로 추측)⚠️
        // ⚠️문제가 발생하는 label들은 광고 화면이었음⚠️
        
        // -> 해결 완료. (ad의 Bool 값에 따라 cell의 UI를 다를게 구성해줘서 해결)
        
        titleLabel.numberOfLines = 0
        subtitleLabel.numberOfLines = 0
        
        saveLabel.numberOfLines = 0
        
        // Label
        titleLabel.font = .boldSystemFont(ofSize: 16)
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.textColor = .gray
        
        // save
        saveLabel.font = .systemFont(ofSize: 13)
        saveLabel.textColor = .gray
    }
    func configureDataFalse(row: Travel) {
        // travel_image
        let image = row.travel_image
        
        // KingFisher
        // image: String? 예외처리
        if let image {
            let url = URL(string: image)
            travelImage.kf.setImage(with: url)
        } else {
            travelImage.image = UIImage(systemName: "xmark")
        }
        
        // title, subtitle, save 내용 cell에 적용 (indexPath.row)
        titleLabel.text = row.title
        subtitleLabel.text = row.description
    }
}
