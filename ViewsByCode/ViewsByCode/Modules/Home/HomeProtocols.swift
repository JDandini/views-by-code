//
//  HomeProtocols.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 27/01/21.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol? { get set }
}

protocol HomePresenterProtocol: AnyObject {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorProtocol? { get set }
    var router: HomeRouterProtocol? { get set }
}

protocol HomeInteractorOutput: AnyObject {}

protocol HomeInteractorProtocol: AnyObject {
    var presenter: HomeInteractorOutput? { get set }
    var localDataManager: HomeLocalDataManagerProtocol? { get set }
}

protocol HomeLocalDataManagerProtocol {
    func fetchData() -> HomeData?
}

protocol HomeRouterProtocol {}

protocol HomeBuilderProtocol {
    static func buildModule() -> UIViewController?
}
