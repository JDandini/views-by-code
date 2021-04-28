//
//  HomeBuilder.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 28/01/21.
//

import UIKit

struct HomeBuilder: HomeBuilderProtocol {
    static func buildModule() -> UIViewController? {
        let view = HomeViewController()
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        let localDataManager = HomeLocalDataManager()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        interactor.localDataManager = localDataManager

        return view
    }
}
