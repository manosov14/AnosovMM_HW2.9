enum MyEnum {
    case A, B, C
}

struct MyData {
    
    var x : Int
    var y : Int
    
    init(x:Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Tester {
    
    var myDictionary = [MyEnum : MyData]()
    func dummy() {
        self.myDictionary[MyEnum.A] = MyData(x: 1, y: 2) // <-- error in this line
    }
}


//let a: Dictionary = [0: AnimationCurve]


let a = AnimationCurve.allCases
print(a)


enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}
