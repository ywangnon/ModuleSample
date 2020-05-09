//
//  ViewController.swift
//  ModuleProject
//
//  Created by Hansub Yoo on 2020/04/27.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var backgroundLabel: UILabel = {
        let label = UILabel()
        label.text = "background"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var view2: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var view3: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setViewFoundations()
        self.setAddSubViews()
        self.setLayouts()
        self.setDelegates()
        self.setAddTargets()
        self.setGestures()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func setViewFoundations() {
        
    }
    
    func setAddSubViews() {
        self.view.addSubview(self.backgroundLabel)
    }
    
    func setLayouts() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.backgroundLabel.widthAnchor.constraint(equalToConstant: 120),
            self.backgroundLabel.heightAnchor.constraint(equalToConstant: 80),
            self.backgroundLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.backgroundLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let cardView = CardView([
            self.view1,
            self.view2,
            self.view3
        ])
        cardView.backgroundColor = .green
        
        self.view.addSubview(cardView)
        
        NSLayoutConstraint.activate([
            cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardView.widthAnchor.constraint(equalTo: view.widthAnchor),
            cardView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setDelegates() {
        
    }
    
    func setAddTargets() {
        
    }
    
    func setGestures() {
        
    }
}

