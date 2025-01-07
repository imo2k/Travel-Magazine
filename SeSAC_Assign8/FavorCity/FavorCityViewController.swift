//
//  FavorCityViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/7/25.
//

/*
 
 CollectionView의 레이아웃을 어떻게 잡아주어야 할지 도저히 감이 오지 않습니다....☠️
 
 */


import UIKit
import Kingfisher

struct City {
    let city_name: String
    let city_english_name: String
    let city_explain: String
    let city_image: String
    let domestic_travel: Bool
}
struct CityInfo {
    let city: [City] = [
        City(city_name: "방콕", city_english_name: "Bangkok", city_explain: "방콕, 파타야, 후아힌, 코사멧, 코사무이", city_image: "https://images.unsplash.com/photo-1716872491897-078d9b89be49?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "오사카", city_english_name: "Osaka", city_explain: "오사카, 교토, 고베, 나라", city_image: "https://images.unsplash.com/photo-1716881768763-4088391a445e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "다낭", city_english_name: "Danang", city_explain: "다낭, 호이안, 후에", city_image: "https://images.unsplash.com/photo-1716619240251-54a22779ed8a?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "제주", city_english_name: "Jeju", city_explain: "제주, 섭지코지, 성산일출봉", city_image: "https://images.unsplash.com/photo-1716565679084-2c3dbececc5e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "부산", city_english_name: "Busan", city_explain: "부산, 해운대, 마린시티", city_image: "https://images.unsplash.com/photo-1716619222059-62e8670293e6?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "파리", city_english_name: "Paris", city_explain: "파리, 베르사유, 몽생미셀, 스트라스부르", city_image: "https://images.unsplash.com/photo-1715638427009-8b0fe7096838?q=80&w=3542&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "시드니", city_english_name: "Sydney", city_explain: "시드니, 블루마운틴, 울릉공, 뉴캐슬", city_image: "https://images.unsplash.com/photo-1716117273853-75a1989029f2?q=80&w=3464&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "전주", city_english_name: "Jeonju", city_explain: "전주, 한옥 마을, 오목대, 경기전", city_image: "https://images.unsplash.com/photo-1715646527352-3e9a4e406952?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "밀라노", city_english_name: "Milano", city_explain: "밀라노, 꼬모, 베로나, 베르가모, 시르미오네", city_image: "https://plus.unsplash.com/premium_photo-1715616257496-5e14778bbc0c?q=80&w=3415&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "리스본", city_english_name: "Lisbon", city_explain: "리스본, 신트라, 카스카이스, 오비두스", city_image: "https://images.unsplash.com/photo-1715559067654-d485ab2618aa?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "서울", city_english_name: "Seoul", city_explain: "서울, 남산타워, 롯데타워, 경복궁", city_image: "https://images.unsplash.com/photo-1715880005923-0013a6820a72?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "두바이", city_english_name: "Dubai", city_explain: "두바이, 아부다비, 알 아인", city_image: "https://images.unsplash.com/photo-1715073145727-393bbded41d9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "홍콩", city_english_name: "Hongkong", city_explain: "홍콩, 마카오", city_image: "https://images.unsplash.com/photo-1715547748806-dab4f4dfbc85?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "토론토", city_english_name: "Toronto", city_explain: "토론토, 나이아가라, 킹스턴, 블루마운틴", city_image: "https://images.unsplash.com/photo-1715645943531-a57960d41818?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "대전", city_english_name: "Daejeon", city_explain: "대전, 성심당", city_image: "https://plus.unsplash.com/premium_photo-1695084221958-079096c96e05?q=80&w=3461&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
    ]
}

// 2단계 Delegate, Data Source
class FavorCityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var selectedCity = CityInfo().city

    // 1단계 : 이름
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet var favorTitleLabel: UILabel!
    
    @IBOutlet var favorTextField: UITextField!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 4단계: 연결 (안해주면 delegate, datasource 있는지 모름..
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let xib = UINib(nibName: "FavorCityCollectionViewCell", bundle: nil)
        collectionView.register(xib, forCellWithReuseIdentifier: "FavorCityCollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        
        // 스크롤 방향 지정
        layout.scrollDirection = .vertical
        
        // 사이즈 지정
        layout.itemSize = CGSize(width: 100, height: 74)
        
        // Cell 사이 Spacing (최소 간격 지정)
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        
        // Cell 바깥부분 Spacing(외각)
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        // 가로 세로 간격 지정
        collectionView.collectionViewLayout = layout
        
        //헤더 영역 디자인
        favorTitleLabel.text = "인기 도시 화면"
        favorTitleLabel.textAlignment = .center
        favorTitleLabel.font = .boldSystemFont(ofSize: 20)
        
    }

    @IBAction func SegmentedControllAction(_ sender: UISegmentedControl) {
    }
    // 3단계: 필수 기능
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedCity.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavorCityCollectionViewCell", for: indexPath) as! FavorCityCollectionViewCell

        let item = selectedCity[indexPath.item]
        
        // 이미지
        let img = item.city_image
        let url = URL(string: img)
        cell.cityImage.kf.setImage(with: url)

        // title, subtitle
        cell.cityTitle.text = "\(item.city_name) | \(item.city_english_name)"
        cell.citySubtitle.text = item.city_explain
    
        
        segmentIndexFilter()
        
        return cell
    }
    
    func segmentIndexFilter() {
        let segmentIndex = segmentedControl.selectedSegmentIndex
        
        selectedCity = CityInfo().city
        
        
        if segmentIndex == 1 { // 국내
            print("국내")
            selectedCity = selectedCity.filter { city in city.domestic_travel == true }
        } else if segmentIndex == 2 { // 해외
            print("해외")
            selectedCity = selectedCity.filter { city in city.domestic_travel == false }
        } else if segmentIndex == 0 { // 전체
            print("전체")
            selectedCity = CityInfo().city
        }
        
        collectionView.reloadData()
    }
}
