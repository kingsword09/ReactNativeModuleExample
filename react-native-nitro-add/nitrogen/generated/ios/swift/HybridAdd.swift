//
//  HybridAdd.swift
//  Pods
//
//  Created by kingsword on 2024/11/9.
//

class HybridAdd: HybridAddSpec {
    var hybridContext = margelo.nitro.HybridContext()
      var memorySize: Int {
        return getSizeOf(self)
      }

      public func add(a: Double, b: Double) throws -> Double {
        return a + b
      }
}
