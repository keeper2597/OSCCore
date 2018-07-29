//
//  helpers.swift
//  OSCCore
//
//  Created by Sebestyén Gábor on 2017. 11. 19..
//

// MARK: byte conversion

// A simple hack to translate various Swift types to byte array
// Source: http://stackoverflow.com/questions/26953591/how-to-convert-a-double-into-a-byte-array-in-swift
func binarytotype <T> (_ value: [Byte], _: T.Type) -> T {
    return value.withUnsafeBytes {
        $0.baseAddress!.load(as: T.self)
    }
}

func typetobinary <T> (_ value: T) -> [Byte] {
    var mutableValue = value
    return withUnsafeBytes(of: &mutableValue) { Array($0) }
}
