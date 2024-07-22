//
//  CounterViewController.swift
//  UserProfileCustom
//
//  Created by Sumit on 22/07/24.
//

 import Foundation
 import UIKit

final class CounterViewController: UIViewController {

    private var counter = 0

    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap me from UIKit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 24
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = getMessage()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addComponents()
        addHandlers()
        addConstrains()
    }

}

private extension CounterViewController {
    
    func getMessage() -> String{
        "UIKit Button was tapped \(counter)"
    }

    func addConstrains() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 250),
            label.heightAnchor.constraint(equalToConstant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 64),
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 200),
        ])
    }

    func addComponents() {
        [button, label]
            .forEach { view.addSubview($0) }
    }

    func addHandlers() {
        button.addTarget(self, action: #selector(didButtonTapped), for: .touchUpInside)
    }

    @objc func didButtonTapped(_ sender: UIButton) {
        counter += 1
        label.text = getMessage()
    }

}

