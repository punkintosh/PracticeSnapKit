//
//  ViewController.swift
//  PracticeSnapKit
//
//  Created by Punkintosh on 2023-05-17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)

        let helloLabel = UILabel()
        helloLabel.text = "Hello, World!"
        helloLabel.textAlignment = .center
        helloLabel.textColor = UIColor(red: 17/255, green: 17/255, blue: 17/255, alpha: 1.0)
        helloLabel.font = UIFont.boldSystemFont(ofSize: 24)
        helloLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(helloLabel)

        helloLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        let snapKitLabel = UILabel()
        snapKitLabel.text = "I'm using SnapKit"
        snapKitLabel.textAlignment = .center
        snapKitLabel.textColor = UIColor.gray
        snapKitLabel.font = UIFont.systemFont(ofSize: 18)
        snapKitLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(snapKitLabel)

        snapKitLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(helloLabel.snp.bottom).offset(16)
        }
    }


}

