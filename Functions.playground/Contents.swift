import UIKit
import Darwin


func myFunction(){
    
    print ("my function ")
}

//myFunction()

// Input output return


func sumFunc(x: Int, y: Int) -> Int {
    //print(x+y)
    return x + y
}

let sumFuncVal = sumFunc(x: 10, y: 20)
print(sumFuncVal)

func logicFunc (a : Int, b : Int)-> Bool{
    if a > b {
        return true
    }
    else{
        return false
    }
}

logicFunc(a: 5, b: 4)

