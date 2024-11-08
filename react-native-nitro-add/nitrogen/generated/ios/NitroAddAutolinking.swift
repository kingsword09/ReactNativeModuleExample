///
/// NitroAddAutolinking.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

public final class NitroAddAutolinking {
  public typealias bridge = margelo.nitro.add.bridge.swift

  /**
   * Creates an instance of a Swift class that implements `HybridAddSpec`,
   * and wraps it in a Swift class that can directly interop with C++ (`HybridAddSpecCxx`)
   *
   * This is generated by Nitrogen and will initialize the class specified
   * in the `"autolinking"` property of `nitro.json` (in this case, `HybridAdd`).
   */
  public static func createAdd() -> bridge.std__shared_ptr_margelo__nitro__add__HybridAddSpec_ {
    let hybridObject = HybridAdd()
    return { () -> bridge.std__shared_ptr_margelo__nitro__add__HybridAddSpec_ in
      let __cxxWrapped = HybridAddSpecCxx(hybridObject)
      let __pointer = HybridAddSpecCxxUnsafe.toUnsafe(__cxxWrapped)
      return bridge.create_std__shared_ptr_margelo__nitro__add__HybridAddSpec_(__pointer)
    }()
  }
}