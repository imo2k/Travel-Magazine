//
//  TravelTableViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/4/25.
//

import UIKit
import Kingfisher

struct Travel {
    let title: String
    let description: String?
    let travel_image: String?
    let grade: Double?
    let save: Int?
    var like: Bool?
    let ad: Bool?
}

struct TravelInfo {
    let travel: [Travel] = [
        Travel(title: "하나우마 베이",
               description: "아름다운 자연을 감상할 수 있는 스노쿨링 명소",
               travel_image: "https://images.unsplash.com/photo-1539498508910-091b5e859b1d?q=80&w=3250&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.8,
               save: 6932,
               like: false,
               ad: false),
        Travel(title: "쿠알로아 랜치",
               description: "광활한 대자연에서 즐기는 다양하고 재미있는 액티비티",
               travel_image: "https://images.unsplash.com/photo-1709380733305-e65f500ab1ac?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.9,
               save: 5167,
               like: true,
               ad: false),
        Travel(title: "알라 모아나 센터",
               description: "하와이 최고의 쇼핑 명소",
               travel_image: "https://images.unsplash.com/photo-1600215754990-6e7946d1e37a?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 3.8,
               save: 8262,
               like: true,
               ad: false),
        Travel(title: "와이키키 비치",
               description: "세계적으로 유명한 하와이 최고의 해변",
               travel_image: "https://images.unsplash.com/photo-1507876466758-bc54f384809c?q=80&w=3309&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.2,
               save: 7892,
               like: true,
               ad: false),
        Travel(title: "하와이 여행을 가고싶다면?\n수업이 있는데 가실 생각은 아니시죠?",
               description: nil,
               travel_image: nil,
               grade: nil,
               save: nil,
               like: nil,
               ad: true),
        Travel(title: "철도 박물관",
               description: "일본 철도의 역사를 둘러볼 수 있는 박물관",
               travel_image: "https://images.unsplash.com/photo-1562326303-31bb8d0f4873?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 2.8,
               save: 3,
               like: false,
               ad: false),
        Travel(title: "도쿄 디즈니랜드",
               description: "월트 디즈니가 창조한 동화 속 세상",
               travel_image: "https://images.unsplash.com/photo-1545580492-8859ba8323f0?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.7,
               save: 26076,
               like: true,
               ad: false),
        Travel(title: "도쿄 타워",
               description: "아름다운 전망을 즐길 수 있는 도쿄의 상징",
               travel_image: "https://images.unsplash.com/photo-1513407030348-c983a97b98d8?q=80&w=3272&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.1,
               save: 37077,
               like: false,
               ad: false),
        Travel(title: "도쿄 여행 예약은?\nXcode로 직접 예약앱을 만들면 되겠네요!",
               description: nil,
               travel_image: nil,
               grade: nil,
               save: nil,
               like: nil,
               ad: true),
        Travel(title: "동문 재래 시장",
               description: "먹거리와 생활용품을 판매하는, 제주에서 가장 큰 시장",
               travel_image: "https://images.unsplash.com/photo-1501523460185-2aa5d2a0f981?q=80&w=3331&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.0,
               save: 67696,
               like: true,
               ad: false),
        Travel(title: "제주 국제공항",
               description: "면세점이 있어 더욱 사랑받는, 제주 여행의 시작과 끝을 함께하는 공항",
               travel_image: "https://images.unsplash.com/photo-1556388158-158ea5ccacbd?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.8,
               save: 18817,
               like: true,
               ad: false),
        Travel(title: "서귀포 매일 올레 시장",
               description: "다양한 농수산물, 잡화, 먹거리를 판매하는 재래 시장",
               travel_image: "https://images.unsplash.com/photo-1511018761631-2e3eb1e4c972?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 3.9,
               save: 45399,
               like: false,
               ad: false),
        Travel(title: "성산일출봉",
               description: "유네스코 세계 자연 유산에 등재된, 제주 최고의 일출 명소",
               travel_image: "https://images.unsplash.com/photo-1622209018972-097984086b0b?q=80&w=3279&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.9,
               save: 44507,
               like: true,
               ad: false),
        Travel(title: "제주 비행기 최저가! 예약 문의는 취업부터!",
               description: nil,
               travel_image: nil,
               grade: nil,
               save: nil,
               like: nil,
               ad: true),
        Travel(title: "영등포 캠퍼스",
               description: "Jack님과 함께하는,\n우당탕탕 iOS 개발 성장기!",
               travel_image: "https://images.unsplash.com/photo-1679285516851-4f0cb04a3893?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 5.0,
               save: 30,
               like: true,
               ad: false),
    ]
}

class TravelTableViewController: UITableViewController {

    var resource = TravelInfo().travel
    
    @IBOutlet var returnButtonDesign: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "도시 상세 정보"
        titleLabel.textAlignment = .center
        titleLabel.font = .boldSystemFont(ofSize: 20)
        
        // titleLabel.textAlignment 적용안됨 이슈 contentHorizontalAlignment 적용으로 해결
        returnButtonDesign.contentHorizontalAlignment = .center
        
        
    }
    
    @IBAction func returnButtonTapped(_ sender: UIButton) {
        print(#function)
    }
    
    // MARK: - Table view data source
    
    // 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resource.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1트) didDeselectRowAt을 2개 선언해서 사용하는 방식 -> 이미 선언되었다고 안됨
        // 2트) 조건문으로 경우 나누기 -> 성공
        if resource[indexPath.row].ad == false {
            tour()
            print("관광지")
        } else if resource[indexPath.row].ad == true {
            ad()
            print("광고")
        }
        
        print(#function)
        
        func tour() {
            // 1. 스토리보드 특정
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            // 2. 전환할 VC가져오기 : TourViewController
            // 이 경우는 Main.storyboard 내에서 작동하는 것이기 때문에 self 사용가능
            let vc = sb.instantiateViewController(withIdentifier: "TourViewController") as! TourViewController
            
            // ⚠️tour VC가 갖고 있는 프로퍼티에 데이터 추가⚠️
            vc.tourTitle = resource[indexPath.row].title
            vc.tourSubtitle = resource[indexPath.row].description
            vc.tourUrlImage = resource[indexPath.row].travel_image

            
            // 3. 화면 전환 방식 선택
            navigationController?.pushViewController(vc, animated: true)
            
            tableView.reloadRows(at: [indexPath], with: .fade)
        }
        func ad() {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = sb.instantiateViewController(withIdentifier: "AdViewController") as! AdViewController
            
            vc.adText = resource[indexPath.row].title
            
            let nav = UINavigationController(rootViewController: vc)
            // Full Screen / Present
            nav.modalPresentationStyle = .fullScreen
            
            present(nav, animated: true)
            
            tableView.reloadRows(at: [indexPath], with: .fade)
        }

    }
    
    // 셀 데이터 + 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 자주 쓰는거 상수에 담기
        let row = resource[indexPath.row]
        
//        resource[indexPath.row].travel_image
//        
//        TravelInfo().travel[indexPath.row].travel_image
        
        if row.ad == false {
            let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.id, for: indexPath) as! TravelTableViewCell
            
            // likeButton
            if let likeButton = row.like {
                let heart = likeButton ? "heart.fill" : "heart"
                let btn = UIImage(systemName: heart)
                cell.likeButton.setImage(btn, for: .normal)
            } else {
                // like가 nil인 경우의 처리
                let likeButtonIsNil = UIImage(systemName: "heart")
                cell.likeButton.setImage(likeButtonIsNil, for: .normal)
            }
            
            // cell마다 버튼을 구분짓기 위해 tag로 분류
            cell.likeButton.tag = indexPath.row
            cell.likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
            
            cell.configureDataFalse(row: row)
            
            // save nil 예외처리
            if let saveCount = row.save {
                let numberFormatter = NumberFormatter()
                numberFormatter.numberStyle = .decimal
                
                if let formattedSaveCount = numberFormatter.string(from: NSNumber(value: saveCount)) {
                    cell.saveLabel.text = "저장 \(formattedSaveCount)"
                } else {
                    cell.saveLabel.text = "저장 \(saveCount)"
                }
                
            } else {
                cell.saveLabel.text = "No data"
            }
            
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: adTableViewCell.id, for: indexPath) as! adTableViewCell
            
            cell.configureDataTrue(row: row)
            
            
            return cell
        }
    }
    
    // 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let row = resource[indexPath.row]
        
        if row.ad == true {
            return 100
        } else {
            return 200
        }
        
    }
    // #selector -> @objc
    @objc @IBAction func likeButtonTapped(_ sender: UIButton) {
        print(#function, sender.tag)
        
        /*
         현재 scope에서는 indexPath.row가 존재하지 않기 때문에
         tag를 사용해서 indexPath.row를 사용한 것과 동일 기능 적용
        */
        resource[sender.tag].like?.toggle()
        
        tableView.reloadData()
        
        
    }
}
