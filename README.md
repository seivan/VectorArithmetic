## VectorArithmetic

### Overview
Extending  ```CGPoint```, ```CGSize``` and ```CGVector``` with the protocols 
```VectorOperatable``` &  ```VectorArithmetic```

### To get better interoperability between 32 and 64-bit numerical types use 
* [ScalarArithmetic](https://github.com/seivan/ScalarArithmetic)

### Usage

##### To enable Math, Equatable and Comparable operations conform to this protocol
```swift
protocol VectorOperatable  {
  init(horizontal:Double,vertical:Double)
  var horizontal:Double { get set }
  var vertical:Double { get set }
}
```

##### Available Math Functions
```swift
protocol VectorArithmetic : VectorOperatable {
  var angleInRadians:Double {get}
  var magnitude:Double {get}
  var length:Double {get}
  var lengthSquared:Double {get}
  func dotProduct <T : VectorArithmetic>(vector:T) -> Double
  func distanceTo <T : VectorArithmetic>(vector:T) -> Double
  var reversed:Self {get}
  var normalized:Self {get}
  func limited(scalar:Double) -> Self
  func scaled(scalar:Double) -> Self
  func angled(scalar:Double) -> Self 
}
``` 

##### Operators

```swift
var point:CGPoint = ...
let vector:CGVector = ...
//Add
point + vector
point += vector

//Subtract
point - vector
point -= vector

//Multiply
point * vector
point *= vector

//Divide
point / vector
point /= vector

//Multiply with scalar
point * 2.0
point *= 2.0

//Divide with scalar
point / 2.0
point /= 2.0
```

##### Equatable and Comparable
```swift
point == vector
point != vector
point < vector
point <= vector
point > vector
point >= vector
```



###Contact


If you end up using VectorArithmetic in a project, I'd love to hear about it.

email: [seivan.heidari@icloud.com](mailto:seivan.heidari@icloud.com)  
twitter: [@seivanheidari](https://twitter.com/seivanheidari)

***

### License

VectorArithmetic is © 2014 [Seivan](http://www.github.com/seivan) and may be freely
distributed under the [MIT license](http://opensource.org/licenses/MIT).
See the [`LICENSE.md`](https://github.com/seivan/VectorArithmetic/blob/master/LICENSE.md) file.

*** 