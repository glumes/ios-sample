import Cocoa

var str = "Hello, playground"


class Manny{
    let name = "manny"
    
    func sayName() {
        print(name)
    }
    
    class Klass{
        
    }
}

class Dog{
    var name = ""
    
    var whatADogSays = "woof"
    
    
    func bark()  {
        print("woof")
    }
    
    func speak(){
        self.bark()
    }
    
}

let fido = Dog()

fido.bark()
fido.speak()


func sum(x:Int,_ y:Int) -> Int{
    let resutl = x+y;
    return resutl;
}

let s = sum(x:4,5)


func say1(s:String) -> Void{
    print(s)
}

func say2(s:String) -> (){
    print(s)
}

func say3(s:String) {
    print(s)
}

print(s)

func repeatString(s:String, times:Int)->String{
    var result = ""
    for _ in 1...times {
        result+=s
    }
    return result
}


print(repeatString(s: "hi", times: 3))

//protocol Filter{
//    func fly()
//}
//
//struct Bird:Filter{
//    func fly() {
//        print("protocol")
//    }
//}

enum Filter : String, CustomStringConvertible {
    case Albums = "Albums"
    case Playlists = "Playlists"
    case Podcasts = "Podcasts"
    case Books = "Audiobooks"
    var description : String { return self.rawValue }
}

let type = Filter.Albums
print(type)
print("It is \(type)")
