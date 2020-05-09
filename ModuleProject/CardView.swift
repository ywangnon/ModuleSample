//
//  CardView.swift
//  ModuleProject
//
//  Created by Hansub Yoo on 2020/05/07.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import UIKit

/**
 카드뷰를 만들어보자!
 
 일단 생각하는 것은 원하는 [UIView]을 넣으면 그 수만큼 카드뷰가 생성되는 것이다.
 
 영역은 원하는 부분에서 Frame 혹은 anchor로 잡을 수 있게 만든다.
 
 */
class CardView: UIScrollView {
    var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var views: [UIView] = []
    
    convenience init(_ views: [UIView]) {
        self.init()
        
        self.views = views
        
        self.setViewFoundations()
        self.setAddSubViews()
        self.setLayouts()
        self.setDelegates()
        self.setAddTargets()
        self.setGestures()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViewFoundations() {
        
    }
    
    func setAddSubViews() {
        self.addSubview(contentView)
    }
    
    func setLayouts() {
        NSLayoutConstraint.activate([
            self.contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            self.contentView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            self.contentView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: CGFloat(self.views.count)),
            self.contentView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor)
        ])
        
        for i in 0..<self.views.count {
            let cardView = UIView(frame: CGRect(x: self.frame.width * CGFloat(i),
                                                y: 0,
                                                width: self.frame.width,
                                                height: self.frame.height))
            cardView.addSubview(self.views[i])
            self.views[i].frame = cardView.bounds
        }
    }
    
    func setDelegates() {
        
    }
    
    func setAddTargets() {
        
    }
    
    func setGestures() {
        
    }
}
