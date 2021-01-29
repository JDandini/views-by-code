//
//  DataExtension.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import Foundation

extension Data {
    static func data(from fileName: String, type: String) -> Data? {
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: type) else {
            return .none
        }
        let url = URL(fileURLWithPath: filePath)
        let data = try? Data(contentsOf: url)
        return data
    }
}
