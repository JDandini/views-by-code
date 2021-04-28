//
//  HomeInteractor.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 28/01/21.
//

import Foundation

final class HomeInteractor: HomeInteractorProtocol {
    weak var presenter: HomeInteractorOutput?
    var localDataManager: HomeLocalDataManagerProtocol?
}
