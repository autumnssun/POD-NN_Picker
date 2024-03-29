//
//  TempuraSceneRouter.swift
//  nn_pickers
//
//  Created Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class TempuraSceneRouter: TempuraSceneWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = TempuraSceneViewController(nibName: nil, bundle: nil)
        let interactor = TempuraSceneInteractor()
        let router = TempuraSceneRouter()
        let presenter = TempuraScenePresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
    
    
    static func createModule(aim:String) -> UIViewController{
        let vc = TempuraSceneRouter.createModule() as! TempuraSceneViewController
        vc.IAMString = aim
        return vc
    }

}
