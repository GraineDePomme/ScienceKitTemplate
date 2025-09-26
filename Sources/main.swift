import Foundation
import Numerics
import ScienceKit

// Physical constants exist with different level of precision from Float16 to Float64
print("The Rydberg constant as a Float16 : \(Float16.rydbergConstant)")
print("The Rydberg constant as a Float32 : \(Float32.rydbergConstant)")
print("The Rydberg constant as a Float64 : \(Float64.rydbergConstant)")

let R: Double = Double.rydbergConstant

for m in 1...3 {
    print("Series for m = \(m)")
    for k in 1...5 {
        let n: Int = m + k

        let waveLength: Double = {
            let a: Double = R / Double(m*m)
            let b: Double = R / Double(n*n)
            return 1.0 / (a + b)
        }()

        print("   \(waveLength.rounded(toPlaces: 4)) nm")
    }
}