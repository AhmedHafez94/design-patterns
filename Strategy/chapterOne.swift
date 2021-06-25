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
class FlyNoWay: FlyBehaviour {
    func fly() {
        print("Duck can not fly")
    }
    
}
class FlyRocketPowered: FlyBehaviour {
    func fly() {
        print("DUck fly with Rocket")
        
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

    func setFlyBehaviour(fb: FlyBehaviour) {
        flyBehaviour = fb 
    }

    func setQuackBehaviour(qb: QuackBehaviour) {
        quackBehaviour = qb 
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

class ModelDuck: Duck {
    override init(){
        super.init() 
        flyBehaviour = FlyNoWay() 
        quackBehaviour = Quack()
       
    }

    override func display() {
        print("displaying model duck")
        
    }
}

class DuckCall: QuackBehaviour {
    func quack() {
        print("mimic the calls (quacks) of ducks")
        
    }
}
var ducky: Duck = MallardDuck()
ducky.performFly()
ducky.performQuack()

var myDuckModel: Duck = ModelDuck() 
myDuckModel.display()
myDuckModel.performQuack()
myDuckModel.performFly()
