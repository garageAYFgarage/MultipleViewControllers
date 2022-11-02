//
//  ViewController.swift
//  MultipleViewControllers
//
//  Created by iFARA💻 on 31.10.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "First VC"
    
        button.setTitle("Go to second VC", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.yellow, for: .normal)
        button.layer.borderWidth = 1.5
        
        
        setupLayout()
    }
    //MARK: - Setup UI
    private func setupLayout() {
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.bottom.equalToSuperview().offset(-350)
            make.trailing.equalToSuperview().offset(-100)
            make.leading.equalToSuperview().offset(100)
            button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        }
    }
    //MARK: - Actions
    @objc private func didTapButton() {
        let rootViewController = SecondViewController()
        let navigationViewController = UINavigationController(rootViewController: rootViewController)
        navigationViewController.modalPresentationStyle = .fullScreen
        present(navigationViewController, animated: true)
    }
}

class SecondViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "Second VC"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
        
        button.setTitle("Go to third VC", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.yellow, for: .normal)
        button.layer.borderWidth = 1.5
        
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.bottom.equalToSuperview().offset(-350)
            make.trailing.equalToSuperview().offset(-100)
            make.leading.equalToSuperview().offset(100)
            button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        }
    }
    
    //MARK: - Actions
    @objc private func didTapButton() {
        let rootViewController = ThirdViewController()
        let navigationViewController = UINavigationController(rootViewController: rootViewController)
        navigationViewController.modalPresentationStyle = .fullScreen
        present(navigationViewController, animated: true)
    }
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
}
}

class ThirdViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Third VC"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dissmis", style: .plain, target: self, action: #selector(dismissSelf))
        
        button.setTitle("Go to View", for: .normal)
        button.backgroundColor = .purple
        button.setTitleColor(.yellow, for: .normal)
        button.layer.borderWidth = 1.5
        
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.bottom.equalToSuperview().offset(-350)
            make.trailing.equalToSuperview().offset(-100)
            make.leading.equalToSuperview().offset(100)
            button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        }
    }
    //MARK: - Actions
    @objc private func didTapButton() {
        let vc = UIViewController()
        vc.view.backgroundColor = .systemCyan
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}
                                                           



