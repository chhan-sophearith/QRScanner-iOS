//
//  ViewController.swift
//  QRScanner-iOS
//
//  Created by Chhan Sophearith on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    let scannerButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Tap Scanner", for: .normal)
        btn.backgroundColor = .orange
        return btn
    }()
    
    private func setupView() {
        scannerButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scannerButton)
        scannerButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        scannerButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        scannerButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        scannerButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        scannerButton.addTarget(self, action: #selector(tapScann), for: .touchUpInside)
    }
    
    @objc func tapScann() {
        let vc = QRScannerVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

