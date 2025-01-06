//
//  Extension + UIDesign.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/6/25.
//

import UIKit

struct Design {
    let label: UILabel
    let btn: UIButton
    let tf: UITextField
    let view: UIView
}

extension Design {
    func buttonDesign(btn: UIButton) {
        btn.backgroundColor = .systemGray4
        btn.layer.cornerRadius = 10
    }
    
    func textFieldDesgin(tf: UITextField) {
        tf.placeholder = "무엇을 구매하실 건가요?"
        tf.backgroundColor = .systemGray5
        tf.borderStyle = .none
    }
    
    func viewDesign(view: UIView) {
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray5
    }
    
    func labelDesign(label: UILabel) {
        label.text = "쇼핑"
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
    }
}
