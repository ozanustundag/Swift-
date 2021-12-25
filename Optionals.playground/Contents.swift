import UIKit

var myName : String?

myName?.uppercased()

//optioanals : ?(belli değil gelip gelmeyeceği demek) vs !(kesin o değer gelicek demek)

var myAge = "4"

var myInteger = (Int(myAge) ??   0) * 5 // my age i int e çeviriremem durumunda default değer atamanı sağlıyor

if let myNumber = Int(myAge) {
    print(myNumber*5)
}else{
    print("wrong Input")
}
