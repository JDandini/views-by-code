//
//  DataExtension.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import Foundation

extension Data {
    static func fromFile(_ fileName: String, fileType: String) -> Data? {
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: fileType) else {
            return .none
        }
        let url = URL(fileURLWithPath: filePath)
        let data = try? Data(contentsOf: url)
        return data
    }
}
