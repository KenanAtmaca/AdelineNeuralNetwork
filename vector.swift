//
//  Created by K&
//  kenanatmaca.com
//  Copyright © 2016 Kenan Atmaca. All rights reserved.
//

import Foundation

struct vector:CustomStringConvertible {
    
    var x0:Double
    var x1:Double
    
    var description: String {
        get {
            return "x0: \(x0) , x1: \(x1)"
        }
    }
    
}

infix operator *!
infix operator -!
infix operator +!
infix operator /!

extension vector {
    
    static func + (lhs:vector,rhs:vector) -> vector {
        return vector(x0: lhs.x0 + rhs.x0, x1: lhs.x1 + rhs.x1)
    }
    
    static func * (lhs:vector,rhs:vector) -> vector {
        return vector(x0: lhs.x0 * rhs.x0, x1: lhs.x1 * rhs.x1)
    }
    
    static func - (lhs:vector,rhs:vector) -> vector {
        return vector(x0: lhs.x0 - rhs.x0, x1: lhs.x1 - rhs.x1)
    }
    
    static func / (lhs:vector,rhs:vector) -> vector {
        return vector(x0: lhs.x0 / rhs.x0, x1: lhs.x1 / rhs.x1)
    }
    
    static func *! (lhs:vector,no:Int) -> vector {
        return vector(x0: lhs.x0 * Double(no), x1: lhs.x1 * Double(no))
    }
    
    static func -! (lhs:vector,no:Int) -> vector {
        return vector(x0: lhs.x0 - Double(no), x1: lhs.x1 - Double(no))
    }
    
    static func +! (lhs:vector,no:Int) -> vector {
        return vector(x0: lhs.x0 + Double(no), x1: lhs.x1 + Double(no))
    }
    
    static func /! (lhs:vector,no:Int) -> vector {
        return vector(x0: lhs.x0 / Double(no), x1: lhs.x1 / Double(no))
    }
    
    static func == (lhs:vector,rhs:vector) -> Bool {
        return lhs.x0 == rhs.x0 && lhs.x1 == rhs.x1
    }
    
    static func > (lhs:vector,rhs:vector) -> Bool {
        return lhs.x0 > rhs.x0 && lhs.x1 > rhs.x1
    }
    
    static func < (lhs:vector,rhs:vector) -> Bool {
        return lhs.x0 < rhs.x0 && lhs.x1 < rhs.x1
    }
    
    static prefix func - (lhs:vector) -> vector {
        return vector(x0: lhs.x0 * -1.0, x1: lhs.x1 * -1.0)
    }
    
    static prefix func + (lhs:vector) -> vector {
        return vector(x0: lhs.x0 * lhs.x0, x1: lhs.x1 * lhs.x1)
    }
    
    
}
