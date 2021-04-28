//
//  HomePresenter.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 28/01/21.
//

import Foundation

final class HomePresenter: HomePresenterProtocol {
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    var router: HomeRouterProtocol?
}

extension HomePresenter: HomeInteractorOutput {}
