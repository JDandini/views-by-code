//
//  HomeLocalDataManager.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 28/01/21.
//

import Foundation

struct HomeLocalDataManager: HomeLocalDataManagerProtocol {
    func fetchItems() -> [Product] {
        guard let data = Data.fromFile("response", fileType: "json") else {
            return []
        }
        let decoder = JSONResponseDecoder<Response>()
        let response = try? decoder.decodeObject(with: data)
        return response?.products ?? []
    }

}
