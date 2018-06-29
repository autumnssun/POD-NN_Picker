//
//  DisplayModule.swift
//  nn_pickers
//
//  Created by Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//
import UIKit
import Foundation
import SnapKit
class DisplayModule: UIView, ModuleProtocol {
    var backDrop: UIView = UIView()
    var stage: UIView = UIView()
    var _action:Selector?
    var _target:UIResponder?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpBackDrop()
        setUpStage()
    }
    
    func setUpStage(){
        addSubview(stage)
        stage.backgroundColor = UIColor.white
        stage.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func setUpBackDrop(){
        addSubview(backDrop)
        backDrop.backgroundColor = UIColor.black
        backDrop.snp.makeConstraints { (make) in
            make.size.equalToSuperview()
            make.center.equalToSuperview()
        }
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func hide(){
        isHidden = true
    }
    
    func show(){
        isHidden = false
    }
    
    func dismiss(){
        dismiss(animated: true)
    }
    
    @objc func didTappedOnBackgroundView(){
        dismiss()
    }
    
}


