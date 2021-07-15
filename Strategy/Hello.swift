import Foundation
protocol fly {
  func canFly()
}
let delegate: fly 
class Bird: fly {
  func canFly() {
    print("birds can fly")
  }
} 
var x = 5 
var y = 6 
print(x + y)
print("hello world")
let async_sync_test_queue = DispatchQueue(label: "com.Instabug.testqueue.sync")

func async_sync_test() {

  async_sync_test_queue.async {
    print("1")
  }

  async_sync_test_queue.sync {
    print("2")
  }
  

  print("3")
}

async_sync_test();
