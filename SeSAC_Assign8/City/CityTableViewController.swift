//
//  CityTableViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/6/25.
//

import UIKit
import Kingfisher

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
        textFieldDesign.addTarget(self, action: #selector(textFieldReturnKeyTapped), for: .editingDidEndOnExit)
    }
    @objc func textFieldReturnKeyTapped() {
        view.endEditing(true)
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
