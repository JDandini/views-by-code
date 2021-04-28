//
//  HomeLocalDataManager.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 28/01/21.
//

import Foundation

struct HomeLocalDataManager: HomeLocalDataManagerProtocol {
    func fetchData() -> HomeData? {
        guard let data = Data.fromFile("HomeData", fileType: "json") else {
            return .none
        }
        do {
            let decoder = JSONDecoder()
            let homeData = try decoder.decode(HomeData.self, from: data)
            return homeData
        } catch {
            return .none
        }
    }
}
