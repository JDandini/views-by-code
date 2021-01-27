//
//  HomeProtocols.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 27/01/21.
//

import UIKit

protocol HomeViewProtocol: class {
    var presenter: HomePresenterProtocol? { get set }
}

protocol HomePresenterProtocol: class {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorProtocol? { get set }
    var router: HomeRouterProtocol? { get set }
}

protocol HomeInteractorOutput: class {}

protocol HomeInteractorProtocol: class {
    var presenter: HomeInteractorOutput? { get set }
    var localDataManager: HomeLocalDataManagerProtocol? { get set }
}

protocol HomeLocalDataManagerProtocol {}

protocol HomeRouterProtocol {}

protocol HomeBuilderProtocol {
    static func buildModule() -> UIViewController?
}
