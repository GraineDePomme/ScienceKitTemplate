import Foundation
import Numerics
import ScienceKit

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