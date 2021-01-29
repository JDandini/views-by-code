//
//  HomeLocalDataManager.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 28/01/21.
//

import Foundation

struct HomeLocalDataManager: HomeLocalDataManagerProtocol {
    func fetchItems() -> [Product] {
        guard let data = fetchDataForFile(with: "response", type: "json") else {
            return []
        }
        let decoder = JSONResponseDecoder<Response>()
        let response = try? decoder.decodeObject(with: data)
        return response?.products ?? []
    }

    private func fetchDataForFile(with name: String, type: String) -> Data? {
        guard let filePath = Bundle.main.path(forResource: name, ofType: type) else {
            return .none
        }
        let url = URL(fileURLWithPath: filePath)
        let data = try? Data(contentsOf: url)
        return data
    }

}
