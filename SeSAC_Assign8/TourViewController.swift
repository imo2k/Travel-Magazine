//
//  TourViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/7/25.
//

import UIKit

class TourViewController: UIViewController {
    
    // 데이터를 받을 공간(프로퍼티) 생성
    // 직접 연결이 안되기 때문에 우회
    var tourTitle: String?
    var tourSubtitle: String?
    var tourUrlImage: String?
    
    @IBOutlet var tourImage: UIImageView!
    
    @IBOutlet var tourTitleLabel: UILabel!
    
    @IBOutlet var tourSubtitleLabel: UILabel!
    
    @IBOutlet var tourButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 전달 받은 값을 화면에 표현
        tourTitleLabel.text = tourTitle
        tourSubtitleLabel.text = tourSubtitle
        
        tourTitleLabel.font = .boldSystemFont(ofSize: 30)
        tourSubtitleLabel.font = .boldSystemFont(ofSize: 22)
        
        tourTitleLabel.numberOfLines = 0
        tourSubtitleLabel.numberOfLines = 0
        
        tourTitleLabel.textAlignment = .center
        tourSubtitleLabel.textAlignment = .center
        
        tourImage.layer.cornerRadius = 10
        tourImage.clipsToBounds = true
        
        tourButton.setTitle("다른 관광지 보러가기", for: .normal)
        tourButton.layer.cornerRadius = 20
        tourButton.setTitleColor(.white, for: .normal)
        tourButton.backgroundColor = UIColor(named: "tourButtonColor")
        
        // tourUrlImage는 현재 구조체 배열의 travel_image 데이터를 받았음
        let img = tourUrlImage
        
        // tourUrlImage: String? -> nil 예외처리
        if let img {
            let url = URL(string: img)
            tourImage.kf.setImage(with: url)
        } else {
            tourImage.image = UIImage(systemName: "xmark")
        }
        
        navigationItem.title = "관광지 화면"
        
        
    }

    @IBAction func tourButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
