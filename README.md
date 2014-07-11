# VectorArithmetic

## Overview
Extending  ```CGPoint```, ```CGSize``` and ```CGVector``` with the protocols 
```VectorOperatable``` &  ```VectorArithmetic```


## API
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

#### Operators

```swift
var point:CGPoint = ...
let vector:CGVector = ...
```
##### Addition
```swift
point + vector
point += vector
```
##### Subtraction
```swift
point - vector
point -= vector
```
##### Multiplication
```swift
point * vector
point *= vector
```
##### Division
```swift
point / vector
point /= vector
```
##### Multiplication with scalar
```swift
point * 2.0
point *= 2.0
```
##### Division with scalar
```swift
point / 2.0
point /= 2.0
```

##### Equatable Comparable
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