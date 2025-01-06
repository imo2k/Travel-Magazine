//
//  MagazineTableViewCell.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/3/25.
//

import UIKit

class MagazineTableViewCell: UITableViewCell {
    
    static let id = "MagazineTableViewController"
    let resouce = MagazineInfo().magazine
    
    @IBOutlet var magazineImage: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
        configure()
    }
    
    func configure() {
        // photo_image 디자인
        magazineImage.layer.cornerRadius = 10
        
        // Label 디자인
        titleLabel.font = .boldSystemFont(ofSize: 30)
        subtitleLabel.font = .systemFont(ofSize: 18)
        subtitleLabel.textColor = .lightGray
        dateLabel.font = .systemFont(ofSize: 15)
        dateLabel.textColor = .lightGray
        dateLabel.textAlignment = .right
        
    }
    
    func configureData(row: Magazine) {
        // magazine photo_image
        let image = row.photo_image
        
        // Kingfisher 활용
        let url = URL(string: image)
        magazineImage.kf.setImage(with: url)
        
        // title, subtitle 내용 cell에 적용 (indexPath.row)
        titleLabel.text = row.title
        subtitleLabel.text = row.subtitle
        
        // title numberOfLines
        titleLabel.numberOfLines = 0
        
        // resource.date 내용 cell에 적용 (indexPath.row)
        dateLabel.text = row.date
        
        // DateFormatter
        let magazineDate = row.date
        let format = DateFormatter()
        format.dateFormat = "yyMMdd"
        
        let viewFormat = DateFormatter()
        viewFormat.dateFormat = "yy년 MM월 dd일"
        let viewDate = format.date(from: magazineDate)
        
        
        dateLabel.text = viewFormat.string(from: viewDate!)
    }
}

