//
//  ShoppingTableViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/5/25.
//

import UIKit

struct Shopping {
    let item: String
    var check: Bool = false
    var star: Bool = false
}

struct ShoppingList {
    let shopping: [Shopping] = [
        Shopping(item: "그립톡 구매하기", check: true, star: true),
        Shopping(item: "사이다 구매"),
        Shopping(item: "아이패드 케이스 최저가 알아보기", check: true, star: true),
        Shopping(item: "양말")
        
    ]
}

class ShoppingTableViewController: UITableViewController {

    var list = ShoppingList().shopping
    
    @IBOutlet var topView: UIView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var shoppingTextField: UITextField!
    
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Extension
        let design = Design(label: titleLabel, btn: addButton, tf: shoppingTextField, view: topView)
        
        design.labelDesign(label: titleLabel)
        design.buttonDesign(btn: addButton)
        design.textFieldDesgin(tf: shoppingTextField)
        design.viewDesign(view: topView)
        
    }
    // MARK: - Table view data source

    // 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    // 셀 데이터 + 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewController") as! ShoppingTableViewCell
        
        let row = list[indexPath.row]
        
        cell.backgroundColor = .systemGray5
        cell.layer.cornerRadius = 10
        
        cell.listLabel.font = .systemFont(ofSize: 14)
        cell.listLabel.text = row.item
        
        // 구매 완료
        let check = row.check ? "checkmark.square" : "checkmark.square.fill"
        let checkBtn = UIImage(systemName: check)
        
        cell.checkButton.setImage(checkBtn, for: .normal)
        // 버튼 구분 = tag사용 / indexPath.row값 = tag값
        cell.checkButton.tag = indexPath.row
        
        cell.checkButton.addTarget(self, action: #selector(checkButtonTapped), for: .touchUpInside)
        
        // 즐겨찾기
        let favorite = row.star ? "star" : "star.fill"
        let starBtn = UIImage(systemName: favorite)
        
        cell.starButton.setImage(starBtn, for: .normal)
        
        // 버튼 구분 = tag사용 / indexPath.row값 = tag값
        cell.starButton.tag = indexPath.row
        
        cell.starButton.addTarget(self, action: #selector(starButtonTapped), for: .touchUpInside)
        
        // 버튼 디자인
        cell.checkButton.tintColor = .black
        cell.starButton.tintColor = .black
        
        return cell
        
        
    }
    
    // 스와이프 삭제
    // handler 클로저 개념 <- Unnamed Function (익명함수)
    // UIContextualAction의 Parameters는 action, sourceView, completionHandler
    /*🔥
     클로저 표현식
     { (Parameters) -> Return Type in   // <- Closure Head
        실행 구문                         // <- Closure Body
     }
     Head와 Body를 구분지어주는 키워드 = in
     Parameter / Return Type 둘 다 없는 클로저도 가능
     
     1급 객체(급이 하나인 객체) 충족 조건
     - 전달 인자로 전달 가능
     - 변수, 데이터 구조 안에 담을 수 있다.
     - 반환 값으로 사용 가능
     */
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "삭제") { (action, view, completion) in
            self.list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            completion(true)
        }
        action.backgroundColor = .red
        
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    @objc func checkButtonTapped(_ sender: UIButton) {
        print(#function, sender.tag)
        
        list[sender.tag].check.toggle()
        tableView.reloadData()
    }
    @objc func starButtonTapped(_ sender: UIButton) {
        print(#function, sender.tag)
        
        list[sender.tag].star.toggle()
        tableView.reloadData()
    }
        
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let addItem = shoppingTextField.text
        
        // nil 예외처리
        if let addItem = addItem, !addItem.isEmpty {
            let newShopping = Shopping(item: addItem)
            list.append(newShopping)
            
            tableView.reloadData()
        } else {
            print("nil")
        }
        
        view.endEditing(true)
  
    }
}
