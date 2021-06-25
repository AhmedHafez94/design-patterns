import Foundation 

protocol FlyBehaviour {
    func fly() 
    
} 

protocol QuackBehaviour {
    func quack() 
} 

class FlyWithWings: FlyBehaviour {
    func fly() {
        print("Duck fly with wings")
    }
    
} 
class FlyNoWings: FlyBehaviour {
    func fly() {
        print("Duck can not fly")
    }
    
}
class Quack: QuackBehaviour {
    func quack() {
        print("Duck can quack")
        
    }
}

class Squeak: QuackBehaviour {
    func quack(){

        print("Duck is squeaking")
        
    }
}

class Duck {  

    var flyBehaviour: FlyBehaviour? 

    var quackBehaviour: QuackBehaviour?


    func swim() {

        print("Duck can swim")
    }

    func display() {

        print("Duck will be dsisplayed")
        
    }

    func performQuack() {
        print("will perform quack")
        quackBehaviour?.quack() 
        
    } 

    func performFly() {
        print("Will perform Fly")
        flyBehaviour?.fly() 
    }
}

class MallardDuck: Duck {

    // var flyBehaviour = FlyWithWings()
    // var quackBehaviour = Quack() 

    override init() {
        super.init()
        flyBehaviour = FlyWithWings()
        quackBehaviour = Quack()
    }

}

var ducky: Duck = MallardDuck()
ducky.performFly()
ducky.performQuack()