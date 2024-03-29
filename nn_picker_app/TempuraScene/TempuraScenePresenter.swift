//
//  TempuraScenePresenter.swift
//  nn_pickers
//
//  Created Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class TempuraScenePresenter: TempuraScenePresenterProtocol, TempuraSceneInteractorOutputProtocol {

    weak private var view: TempuraSceneViewProtocol?
    var interactor: TempuraSceneInteractorInputProtocol?
    private let router: TempuraSceneWireframeProtocol

    init(interface: TempuraSceneViewProtocol, interactor: TempuraSceneInteractorInputProtocol?, router: TempuraSceneWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
