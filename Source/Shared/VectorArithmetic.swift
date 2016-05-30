import CoreGraphics

public protocol VectorOperatable  {
  init(horizontal:Double,vertical:Double)
  var horizontal:Double { get set }
  var vertical:Double { get set }
}

public protocol VectorArithmetic : VectorOperatable {
  var angleInRadians:Double {get}
  var magnitude:Double {get}
  var length:Double {get}
  var lengthSquared:Double {get}
  func dotProduct <T : VectorArithmetic>(vector:T) -> Double
  func crossProduct <T : VectorArithmetic>(vector:T) -> Double
  func distanceTo <T : VectorArithmetic>(vector:T) -> Double
  var reversed:Self {get}
  var normalized:Self {get}
  func limited(scalar:Double) -> Self
  func scaled(scalar:Double) -> Self
  func angled(scalar:Double) -> Self

  
}

//Since these structs already have != operator for themselves, but not against each we can't use a generic constraint

public func != (lhs: CGVector , rhs: CGSize) -> Bool {
  return (lhs == rhs) == false
}
public func != (lhs: CGVector , rhs: CGPoint) -> Bool {
  return (lhs == rhs) == false
}
public func != (lhs: CGSize , rhs: CGVector) -> Bool {
  return (lhs == rhs) == false
}
public func != (lhs: CGSize , rhs: CGPoint) -> Bool {
  return (lhs == rhs) == false
}
public func != (lhs: CGPoint , rhs: CGVector) -> Bool {
  return (lhs == rhs) == false
}
public func != (lhs: CGPoint , rhs: CGSize) -> Bool {
  return (lhs == rhs) == false
}

public func == <T:VectorOperatable, U:VectorOperatable> (lhs:T,rhs:U) -> Bool {
    return (lhs.horizontal == rhs.horizontal && lhs.vertical == rhs.vertical)
}
//Gives ambigious operator since the struct already does compare to its own type
//func != <T:VectorOperatable, U:VectorOperatable>(lhs: T , rhs: U) -> Bool {
//  return (lhs == rhs) == false
//}
public func <= <T:VectorOperatable, U:VectorOperatable>(lhs:T, rhs:U) -> Bool {
    return (lhs <  rhs) || (lhs == rhs)
}
public func < <T:VectorOperatable, U:VectorOperatable>(lhs: T , rhs: U) -> Bool {
  return (lhs.horizontal <  rhs.horizontal || lhs.vertical < rhs.vertical)
}
public func >= <T:VectorOperatable, U:VectorOperatable>(lhs: T , rhs: U) -> Bool {
    return (lhs > rhs) || ( lhs == rhs)
}
public func > <T:VectorOperatable, U:VectorOperatable>(lhs: T , rhs: U) -> Bool {
    return (lhs <= rhs) == false
}

public func - <T:VectorOperatable, U:VectorOperatable>(lhs: T, rhs:U) -> T  {
  return T(horizontal: lhs.horizontal-rhs.horizontal, vertical: lhs.vertical-rhs.vertical)
}
public func -= <T:VectorOperatable, U:VectorOperatable>(inout lhs: T, rhs:U)  {
  lhs = lhs - rhs
}

public func + <T:VectorOperatable, U:VectorOperatable>(lhs: T, rhs:U) -> T  {
  return T(horizontal: lhs.horizontal+rhs.horizontal, vertical: lhs.vertical+rhs.vertical)
}
public func += <T:VectorOperatable, U:VectorOperatable>(inout lhs: T, rhs:U)  {
  lhs = lhs + rhs
}

public func * <T:VectorOperatable, U:VectorOperatable>(lhs: T, rhs:U) -> T  {
  return T(horizontal: lhs.horizontal*rhs.horizontal, vertical: lhs.vertical*rhs.vertical);
}
public func *= <T:VectorOperatable, U:VectorOperatable>(inout lhs: T, rhs:U)  {
  lhs = lhs * rhs
  
}

public func / <T:VectorOperatable, U:VectorOperatable>(lhs:T, rhs:U) -> T  {
  return T(horizontal: lhs.horizontal/rhs.horizontal, vertical: lhs.vertical/rhs.vertical);
}
public func /= <T:VectorOperatable, U:VectorOperatable>(inout lhs:T, rhs:U) -> T  {
  lhs = lhs / rhs
  return lhs
}


public func / <T:VectorOperatable>(lhs:T, scalar:Double) -> T  {
  return T(horizontal: lhs.horizontal/scalar, vertical: lhs.vertical/scalar);
}
public func /= <T:VectorOperatable>(inout lhs:T, scalar:Double) -> T  {
  lhs = lhs / scalar
  return lhs
}

public func * <T:VectorOperatable>(lhs: T, scalar:Double) -> T  {
  return T(horizontal: lhs.horizontal*scalar, vertical: lhs.vertical*scalar)
}
func * <T:VectorOperatable>(scalar:Double, rhs: T) -> T  {
  return T(horizontal: rhs.horizontal*scalar, vertical: rhs.vertical*scalar)
}
func *= <T:VectorOperatable>(inout lhs: T, value:Double)   {
  lhs = lhs * value
}



internal struct InternalVectorArithmetic {
    
  internal static func angleInRadians  <T : VectorArithmetic>(vector:T) -> Double {
    let normalizedVector = self.normalized(vector)

    let theta = atan2(normalizedVector.vertical, normalizedVector.horizontal)
    return theta + M_PI_2 * -1
  }
  
  internal static func magnitude <T : VectorArithmetic>(vector:T) -> Double {
    return sqrt(self.lengthSquared(vector))
  }
  
  internal static func lengthSquared <T : VectorArithmetic>(vector:T) -> Double {
    return ((vector.horizontal*vector.horizontal) + (vector.vertical*vector.vertical))
  }
  
  
  internal static func reversed <T : VectorArithmetic>(vector:T) -> T {
    return vector * -1
  }
  
  internal static func dotProduct <T : VectorOperatable, U : VectorOperatable > (vector:T, otherVector:U) -> Double  {
    return (vector.horizontal*otherVector.horizontal) + (vector.vertical*otherVector.vertical)
  }

  internal static func crossProduct <T : VectorArithmetic, U : VectorArithmetic > (vector:T, otherVector:U) -> Double  {
    let deltaAngle = sin(self.angleInRadians(vector) - self.angleInRadians(otherVector))
    return self.magnitude(vector) * self.magnitude(otherVector) * deltaAngle
  }
  
  
  internal static func distanceTo <T : VectorArithmetic, U : VectorArithmetic > (vector:T, otherVector:U) -> Double {
    let deltaX = Double.abs(vector.horizontal - otherVector.horizontal)
    let deltaY = Double.abs(vector.vertical   - otherVector.vertical)
    return self.magnitude(T(horizontal: deltaX, vertical: deltaY))
  }
  
  internal static func normalized <T : VectorArithmetic>(vector:T) -> T {
    let length = self.magnitude(vector)
    var newPoint:T = vector
    if(length > 0.0) {
      newPoint /= length
    }
    return newPoint
  }
  
  internal static func limit <T : VectorArithmetic>(vector:T, scalar:Double) -> T  {
    var newPoint = vector
    if(self.magnitude(vector) > scalar) {
      newPoint = self.normalized(newPoint) * scalar
    }
    return newPoint
  }

  
  internal static func vectorWithAngle <T:VectorArithmetic>(vector:T, scalar:Double) -> T {
    let length = self.magnitude(vector)
    return T(horizontal: cos(scalar) * length, vertical: sin(scalar) * length)
  }
}


extension CGPoint: VectorArithmetic  {

  
  public init(horizontal:Double,vertical:Double) {
    self.init(x: horizontal, y: vertical)
  }
  

//  public init(x:Double, y:Double) {
//    self.init(x:CGFloat(x), y:CGFloat(y))
//  }
    
  public var horizontal:Double {
    get { return Double(self.x)      }
    set { self.x = CGFloat(newValue) }
  }
  public var vertical:Double {
    get {return Double(self.y)       }
    set {self.y = CGFloat(newValue)  }
  }
  

  public var angleInRadians:Double { return InternalVectorArithmetic.angleInRadians(self)}
  public var magnitude:Double { return InternalVectorArithmetic.magnitude(self) }
  public var length:Double { return self.magnitude }
  public var lengthSquared:Double { return InternalVectorArithmetic.lengthSquared(self) }
  public func dotProduct <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.dotProduct(self, otherVector: vector) }
  public func crossProduct <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.crossProduct(self, otherVector: vector) }
  public func distanceTo <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.distanceTo(self, otherVector: vector) }
  public var reversed:CGPoint { return InternalVectorArithmetic.reversed(self) }
  public var normalized:CGPoint { return InternalVectorArithmetic.normalized(self) }
  public func limited(scalar:Double) -> CGPoint { return InternalVectorArithmetic.limit(self, scalar: scalar) }
  public func scaled(scalar:Double) -> CGPoint { return InternalVectorArithmetic.limit(self, scalar: scalar) }
  public func angled(scalar:Double) -> CGPoint { return InternalVectorArithmetic.vectorWithAngle(self, scalar: scalar) }

  
}


extension CGSize: VectorArithmetic   {

  public init(horizontal:Double,vertical:Double) {
    self.init(width: horizontal, height: vertical)
  }


//  public init(width:Double, height:Double) {
//    self.init(width:CGFloat(width), height:CGFloat(height))
//  }
    
  public var horizontal:Double {
    get { return Double(self.width)      }
    set { self.width = CGFloat(newValue) }
  }
  public var vertical:Double {
    get {return Double(self.height)       }
    set {self.height = CGFloat(newValue)  }
  }
  
  
  
  public var angleInRadians:Double { return InternalVectorArithmetic.angleInRadians(self) }
  public var magnitude:Double { return InternalVectorArithmetic.magnitude(self) }
  public var length:Double { return self.magnitude }
  public var lengthSquared:Double { return InternalVectorArithmetic.lengthSquared(self) }
  public func dotProduct <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.dotProduct(self, otherVector: vector) }
  public func crossProduct <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.crossProduct(self, otherVector: vector) }

  public func distanceTo <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.distanceTo(self, otherVector: vector) }
  public var reversed:CGSize { return InternalVectorArithmetic.reversed(self) }
  public var normalized:CGSize { return InternalVectorArithmetic.normalized(self) }
  public func limited(scalar:Double) -> CGSize { return InternalVectorArithmetic.limit(self, scalar: scalar) }
  public func scaled(scalar:Double) -> CGSize { return InternalVectorArithmetic.limit(self, scalar: scalar) }
  public func angled(scalar:Double) -> CGSize { return InternalVectorArithmetic.vectorWithAngle(self, scalar: scalar) }
  
  
}

extension CGVector: VectorArithmetic   {
  
  public init(horizontal:Double,vertical:Double) {
    self.dx = CGFloat(horizontal)
    self.dy = CGFloat(vertical)

  }
  

  public init(_ dx:Double, _ dy:Double) {
    self.dx = CGFloat(dx)
    self.dy = CGFloat(dy)
  }
  
  public var horizontal:Double {
    get { return Double(self.dx)      }
    set { self.dx = CGFloat(newValue) }
  }
  public var vertical:Double {
    get {return Double(self.dy)       }
    set {self.dy = CGFloat(newValue)  }
  }
  

  public var angleInRadians:Double { return InternalVectorArithmetic.angleInRadians(self) }
  public var magnitude:Double { return InternalVectorArithmetic.magnitude(self) }
  public var length:Double { return self.magnitude }
  public var lengthSquared:Double { return InternalVectorArithmetic.lengthSquared(self) }
  public func dotProduct <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.dotProduct(self, otherVector: vector) }
  public func crossProduct <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.crossProduct(self, otherVector: vector) }
  public func distanceTo <T : VectorArithmetic> (vector:T) -> Double { return InternalVectorArithmetic.distanceTo(self, otherVector: vector) }
  public var reversed:CGVector { return InternalVectorArithmetic.reversed(self) }
  public var normalized:CGVector { return InternalVectorArithmetic.normalized(self) }
  public func limited(scalar:Double) -> CGVector { return InternalVectorArithmetic.limit(self, scalar: scalar) }
  public func scaled(scalar:Double) -> CGVector { return InternalVectorArithmetic.limit(self, scalar: scalar) }
  public func angled(scalar:Double) -> CGVector { return InternalVectorArithmetic.vectorWithAngle(self, scalar: scalar) }

}

extension VectorOperatable {
    public var point: CGPoint {
        return CGPoint(x: horizontal, y: vertical)
    }

    public var size: CGSize {
        return CGSize(width: horizontal, height: vertical)
    }

    public var vector: CGVector {
        return CGVector(dx: horizontal, dy: vertical)
    }
}

extension CGRect {
    public var widthVector: CGVector {
        return CGVector(dx: size.width, dy: 0)
    }

    public var heightVector: CGVector {
        return CGVector(dx: 0, dy: size.height)
    }
}