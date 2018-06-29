//
//  ActionSheet.swift
//  nn_pickers
//
//  Created by Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//

import Foundation


protocol ModuleProtocol: StageProtocol{
    var _action:Selector? {get set}
    var _target:UIResponder? {get set}
    
    func show(animated:Bool)
    func dismiss(animated:Bool)
    func didTappedOnBackgroundView()
    
}
protocol StageProtocol {
    var stage:UIView{get set}
    var backDrop:UIView {get}
    
    func setUpStage()
    func setUpBackDrop()
}
