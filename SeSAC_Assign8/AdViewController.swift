//
//  AdViewController.swift
//  SeSAC_Assign8
//
//  Created by GO on 1/7/25.
//

import UIKit

    

class AdViewController: UIViewController {
    
    @IBOutlet var adLabel: UILabel!
    
    var adText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adLabel.text = adText
        adLabel.textAlignment = .center
        adLabel.numberOfLines = 0
        adLabel.font = .boldSystemFont(ofSize: 24)
        
        navigationItem.title = "광고 화면"
        
        
    }
    
    
    @IBAction func dismissButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}

