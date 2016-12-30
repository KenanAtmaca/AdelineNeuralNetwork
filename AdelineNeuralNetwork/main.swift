//
//  Created by K&
//  kenanatmaca.com
//  Copyright © 2016 Kenan Atmaca. All rights reserved.
//

import Foundation


var neural = Adeline()

neural.weights = (0.3,0.2)
neural.a = 0.5
neural.bias = 0.1

neural.input_1 = vector(x0: 1.0, x1: 0.0)
neural.input_2 = vector(x0: 0.5, x1: 1.0)

neural.train()

print(neural.weights)
print(neural.bias)
print("\n")

var dataSet:[vector] = [neural.input_1,neural.input_1,neural.input_2,neural.input_1,neural.input_2,neural.input_1,neural.input_1]

neural.cluster(dataSet: dataSet, output: 1) // 2,4

var test = neural.test(output: 1) // true

