//
//  JSONResponseDecoder.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import Foundation

struct JSONResponseDecoder<Type: Decodable> {
    private let decoder = JSONDecoder()
    func decodeObject(with data: Data)throws -> Type {
        let objectDecoded = try decoder.decode(Type.self, from: data)
        return objectDecoded
    }
}
