import UIKit
//arrays
var myFavoriteMovies = ["Pulp Fiction","Avengers","Spiderman",5,true] as [Any]

//as-> casting
// any-> any object

//index
myFavoriteMovies[0]
myFavoriteMovies[1]
myFavoriteMovies[2]
myFavoriteMovies[3]
myFavoriteMovies[4]

var myStringArray = ["on","12","on sekiz"]
myStringArray[0].uppercased()
myStringArray.count
myStringArray.last
myStringArray[myStringArray.count-1]
myStringArray.sort()

var myNumberArray = [1,2,3]
myNumberArray.append(5)
myNumberArray.last
//set
// unordered collection, unique elements
var mySet : Set = [1,2,3,4,5]
var myStringSet : Set = ["a","b","c"]

var myInternetArray = [1,2,5,47,8,58,5,5,6,74,7,7]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

var mySet3 = mySet1.union(mySet2)
print(mySet3)

//dictionary
// key-value pairing

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino","Luck Stock" :  "Guy Ritchie" , "Rosencrantz and Guildenstern Are Dead" : "Tom Stoppard" ]

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["Rosencrantz and Guildenstern Are Dead"] = "Ozan Üstündağ"
myFavoriteDirectors["Rosencrantz and Guildenstern Are Dead"]
myFavoriteDirectors["Interstaller"] = "Nolan"

print(myFavoriteDirectors)


var myFavoriteNumbers = ["ozan" : 1, "ayşe" : 2]
myFavoriteNumbers["ozan"]

var myDicInArray = [["ozan" : 1, "Sevtap" : 2],["HacıÖmerTarman" : 4, "Ayrancı" : 5]]
                                              
print(myDicInArray[1]["Ayrancı"]!)

