//
//  ViewController.swift
//  Навигация iOS
//
//  Created by Антон Исаков on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {

    
    private lazy var textNamePage: UILabel = {
        let textNamePage = UILabel()
        textNamePage.text = "Login"
        textNamePage.layer.cornerRadius = 20
        textNamePage.translatesAutoresizingMaskIntoConstraints = false
        textNamePage.font = UIFont.boldSystemFont(ofSize: 30)
        textNamePage.font = UIFont.preferredFont (forTextStyle: .largeTitle)
        textNamePage.numberOfLines = 5
        textNamePage.textAlignment = .center
        return textNamePage
    }()
    
    private lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton(type: .system)
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.setTitleColor(UIColor.black, for: .normal)
        buttonLogin.backgroundColor = .systemGray
        buttonLogin.layer.cornerRadius = 15
        buttonLogin.layer.shadowColor = UIColor.black.cgColor
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonLogin.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return buttonLogin
    }()
    
    private lazy var buttonLoginTwo = {
        let buttonLogin = UIButton(type: .system)
        buttonLogin.setTitle("Жми меня", for: .normal)
        buttonLogin.setTitleColor(UIColor.black, for: .normal)
        buttonLogin.backgroundColor = .systemGray
        buttonLogin.layer.cornerRadius = 15
        buttonLogin.layer.shadowColor = UIColor.black.cgColor
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonLogin.addTarget(self, action: #selector(buttonPressedTwo), for: .touchUpInside)
        return buttonLogin
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Название класса"
        setupView()
        setupHierarchy()
        setupLayout()
        
    }
    private func setupView() {}

    private func setupHierarchy() {
        view.addSubview(textNamePage)
        view.addSubview(buttonLogin)
        view.addSubview(buttonLoginTwo)
    }
    
    private func setupLayout() {
        
        let height = view.bounds.height // 812
        let width = view.bounds.width // 375
        
        NSLayoutConstraint.activate([
            textNamePage.centerXAnchor.constraint (equalTo: view.centerXAnchor),
            textNamePage.centerYAnchor.constraint (equalTo: view.centerYAnchor),
            textNamePage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: width * 0.05),
            textNamePage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -width * 0.05),
            
            buttonLogin.topAnchor.constraint(equalTo: textNamePage.bottomAnchor, constant: height * 0.10),
            buttonLogin.leftAnchor.constraint (equalTo: view.leftAnchor, constant: width * 0.13),
            buttonLogin.rightAnchor.constraint (equalTo: view.rightAnchor, constant: -width * 0.13),
            buttonLogin.heightAnchor.constraint(equalToConstant: 41),
            
            buttonLoginTwo.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: height * 0.10),
            buttonLoginTwo.leftAnchor.constraint (equalTo: view.leftAnchor, constant: width * 0.13),
            buttonLoginTwo.rightAnchor.constraint (equalTo: view.rightAnchor, constant: -width * 0.13),
            buttonLoginTwo.heightAnchor.constraint(equalToConstant: 41),
        ])
    }
    
    @objc func buttonPressed() {
        let viewController = PushViewController()
        if let navigator = navigationController {
            navigator.pushViewController(viewController, animated: true)
        }
        
    }
    
    @objc func buttonPressedTwo() {
        showAlert()
        }
        
    func showAlert() {
        let alert = UIAlertController(title: "Не верное имя", message: "Попробуй еще раз", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: { event in }))
        self.present(alert, animated: true)
    }
    
}

class PushViewController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}

