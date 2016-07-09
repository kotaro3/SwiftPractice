//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

func test(r:Int) -> Int {
    let a:Int = 10;
    
    return a;
}

let nums:[Int] = [1,2,3]


func variableArgment(nums:Int...){
    for num in nums {
        print(num)
    }
}

variableArgment(1,2,3)


test(1)


