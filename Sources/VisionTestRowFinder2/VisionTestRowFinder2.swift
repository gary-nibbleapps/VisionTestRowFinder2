//
//  VisionTestRowFinder2.swift
//  VisionTest2
//
//  Created by gary on 03/10/2020.
//

import Foundation

public struct VisionTestRowFinder2 {
    public init() {}


    public func rows(from results: [Item2]) -> [[Item2]] {
        var result: [[Item2]] = []
        var currentRow: [Item2] = [results.first!]
        for (r1, r2) in zip(results, results[1...]) {
            if r1.isSameRow(r2) {
                currentRow.append(r2)
            } else {
                result.append(currentRow)
                currentRow = [r2]
            }
        }
        result.append(currentRow)
        return result
    }
}
