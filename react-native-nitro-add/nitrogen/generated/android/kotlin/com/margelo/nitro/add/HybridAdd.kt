package com.margelo.nitro.add

class HybridAdd : HybridAddSpec() {
    override val memorySize: Long
        get() = 0L

    override fun add(a: Double, b: Double): Double {
        return a + b
    }
}