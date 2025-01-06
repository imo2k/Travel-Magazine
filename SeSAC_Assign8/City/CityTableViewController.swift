//
//  CityTableViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/6/25.
//

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

class CityTableViewController: UITableViewController, UITextFieldDelegate {
    
    // 😭 domestic_travel에 접근하기 위해서 개념을 살짝 정리를 해봤습니다 (혹시 틀렸다면 지도편달 부탁드립니다..ㅠㅠ)
    
    // CityInfo() 인스턴스에 city 프로퍼티에 접근해서 City 구조체의 배열 가져옴
    // + struct는 값 타입 -> 구조체 City에서 선언된 (city_name,city_english_name, city_explain, city_image,domestic_travel)인스턴스 들의 값을 복사해옴 (각 프로퍼티(상수)들은 저장 인스턴스 프로퍼티임
    /*
     구조체 CityInfo 내부에 선언된 city 프로퍼티(저장, 인스턴스 프로퍼티)는 구조체 City의 배열을 타입으로 가짐
     
     밑에서 선언된 city는 구조체 CityInfo의 새로운 인스턴스를 생성한 것이고
     구조체 CityInfo에서 선언된 저장, 인스턴스 프로퍼티인 city 프로퍼티에 접근함
     */
    
    // + 네이밍의 중요함 배웠습니다.. ☠️구분 잘되게 네이밍하기☠️
    var selectedCity = CityInfo().city // let city: [City] = CityInfo().city의 축약형
     
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var textFieldDesign: UITextField!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "인기 도시"
        titleLabel.font = .boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center
        
        // 레지스터
        let nib = UINib(nibName: "CityTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CityTableViewCell")
        
        textFieldDesign.delegate = self
        textFieldDesign.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    @objc func textFieldDidChange(textField: UITextField) {
        segmentIndexFilter()
    }
    func segmentIndexFilter() {
        let segmentIndex = segmentedControl.selectedSegmentIndex
        
        selectedCity = CityInfo().city
        
        // 세그먼트 컨트롤에서 2개만 화면이 잘나오는 이슈 발생
        // -> 모두 탭을 찍고 다시 다른 탭을 선택하면 나오긴 하지만 국내 - 해외 (안나옴), 해외 - 국내 (안나옴)
        /*
         "모두" 화면일 때는 전체배열
         ("국내" -> "해외" /  "해외" -> "국내") 는 이미 필터링된 배열을 사용하게 되는게 원인이였음
         조건문 시작 전 배열을 초기화 시켜줌으로서 해결
         */
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
        selectedCity = editingChangeSearch()
        
        tableView.reloadData()
    }
    
    // 검색
    func editingChangeSearch() -> [City] {
        guard let searchText = textFieldDesign.text, !searchText.isEmpty else {
            return selectedCity
        }
        return selectedCity.filter { $0.city_english_name.contains(searchText) || $0.city_explain.contains(searchText) || $0.city_name.contains(searchText) }
    }
    
    @IBAction func segmentedControllTapped(_ sender: UISegmentedControl) {
        print(#function)
        segmentIndexFilter()

    }
    
    // MARK: - Table view data source
    
    // 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedCity.count
    }
    
    // 셀 데이터 + 디자인(CityTableViewCell)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CityTableViewCell.identifier) as! CityTableViewCell
        
        let row = selectedCity[indexPath.row]
        
        cell.configureData(row: row)
        
        return cell
    }
    
    // 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
}
