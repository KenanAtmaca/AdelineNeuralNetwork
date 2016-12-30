//
//  Created by K&
//  kenanatmaca.com
//  Copyright © 2016 Kenan Atmaca. All rights reserved.
//

import Foundation


class Adeline {
    
    var input_1:vector!
    var input_2:vector!
    
    var output_1 = -1
    var output_2 = 1
    
    var weights:(Double,Double)!
    var bias:Double!
    var a:Double!
    
    var E:Int!
    var net:Int!
    
    let loop:Int = 50
    
    
    init() {}
    
    private func net (input:vector) {
        
        self.net = weights.0 * input.x0 + weights.1 * input.x1 + bias >= 0 ? 1 : -1
        
    }
    
    private func error(boutput:Int) {
        
        E = boutput - self.net
        
    }
    
    private func trainer (input:vector,output:Int) {
        
        for _ in 0..<loop {
            
            self.net(input: input)
            self.error(boutput: output)
            let crp = Int(self.a * Double(self.E))
            let nvector = (Double(crp) * input.x0,Double(crp) * input.x1)
            let finalVector = (self.weights.0 + nvector.0,self.weights.1 + nvector.1)
            self.weights = finalVector
            self.bias = self.bias + self.a * Double(self.E)
            
        }
        
    }
    
    func train() {
        
        self.trainer(input: self.input_1, output: self.output_1)
        self.trainer(input: self.input_2, output: self.output_2)
        
    }
    
    func test(output:Int) -> Bool {
        
        net(input: input_2)
        error(boutput: output)
        
        if E == 0 {
            return true
        } else {
            return false
        }
        
    }
    
    
    func cluster(dataSet:[vector],output:Int) {
        
        for i in 0..<dataSet.count {
            
            net(input: dataSet[i])
            error(boutput: output)
            
            if E == 0 {
                print(i)
            }
            
        }
        
    }
    
    
}//
