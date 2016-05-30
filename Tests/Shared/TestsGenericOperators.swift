//
//  TestsCGVectorOperators.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics
import VectorArithmetic

class TestsGenericOperators<T:VectorOperatable, U:VectorOperatable, Z:VectorOperatable>: TestOperators {
  var vectorVector:T = T(horizontal: 2, vertical: 2)
  var vectorPoint:U = U(horizontal: 2, vertical: 2)
  var vectorSize:Z = Z(horizontal: 2, vertical: 2)
  let doubleValue:Double = 2.0

  func testEqual() {
    XCTAssert(self.vectorVector == self.vectorVector)
    XCTAssert(self.vectorVector == self.vectorPoint)
    XCTAssert(self.vectorVector == self.vectorSize)
  }
  
  func testLessThanOrEqual() {
    XCTAssert(self.vectorVector <= self.vectorVector)
    XCTAssert(self.vectorVector <= self.vectorPoint)
    XCTAssert(self.vectorVector <= self.vectorSize)
    self.vectorVector.horizontal = 0.0
    self.vectorVector.vertical = 0.0
    XCTAssert(self.vectorVector <= self.vectorVector)
    XCTAssert(self.vectorVector <= self.vectorPoint)
    XCTAssert(self.vectorVector <= self.vectorSize)
    
    
    
  }
  func testLessThan() {
    self.vectorVector.horizontal = 0.0
    self.vectorVector.vertical = 0.0
    XCTAssertFalse(self.vectorVector < self.vectorVector)
    XCTAssert(self.vectorVector < self.vectorPoint)
    XCTAssert(self.vectorVector < self.vectorSize)
    
  }
  func testMoreThanOrEqual() {
    XCTAssert(self.vectorVector >= self.vectorVector)
    XCTAssert(self.vectorVector >= self.vectorPoint)
    XCTAssert(self.vectorVector >= self.vectorSize)
    self.vectorVector.horizontal += 1.0
    self.vectorVector.vertical += 1.0
    XCTAssert(self.vectorVector >= self.vectorVector)
    XCTAssert(self.vectorVector >= self.vectorPoint)
    XCTAssert(self.vectorVector >= self.vectorSize)
    
  }
  func testMoreThan() {
    self.vectorVector.horizontal += 1.0
    self.vectorVector.vertical += 1.0
    XCTAssertFalse(self.vectorVector > self.vectorVector)
    XCTAssert(self.vectorVector > self.vectorPoint)
    XCTAssert(self.vectorVector > self.vectorSize)
    
  }
  func testSubtraction() {
    self.vectorVector = self.vectorVector - self.vectorVector
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue-self.doubleValue)
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue-self.doubleValue)

    self.vectorVector = self.vectorVector - self.vectorPoint
    XCTAssertEqual(self.vectorVector.vertical, -self.doubleValue)
    XCTAssertEqual(self.vectorVector.horizontal, -self.doubleValue)
    
    self.vectorVector = self.vectorVector - self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, -self.doubleValue*2)
    XCTAssertEqual(self.vectorVector.vertical, -self.doubleValue*2)

  }
  func testSubtractionAssignment() {
    self.vectorVector -= self.vectorVector
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue-self.doubleValue)
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue-self.doubleValue)
    
    self.vectorVector -= self.vectorPoint
    XCTAssertEqual(self.vectorVector.vertical, -self.doubleValue)
    XCTAssertEqual(self.vectorVector.horizontal, -self.doubleValue)
    
    self.vectorVector -= self.vectorSize
    XCTAssertEqual(self.vectorVector.vertical, -self.doubleValue*2)
    XCTAssertEqual(self.vectorVector.horizontal, -self.doubleValue*2)
    
  }
  func testAddition() {
    self.vectorVector = self.vectorVector + self.vectorVector
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue*2)
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue*2)
    
    self.vectorVector = self.vectorVector + self.vectorPoint
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue*3)
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue*3)
    
    self.vectorVector = self.vectorVector + self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue*4)
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue*4)
  }
  
  func testAdditionAssignment() {
    self.vectorVector += self.vectorVector
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue*2)
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue*2)
    
    self.vectorVector += self.vectorPoint
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue*3)
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue*3)
    
    self.vectorVector += self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, self.doubleValue*4)
    XCTAssertEqual(self.vectorVector.vertical, self.doubleValue*4)
    
  }
  func testMultiplication() {
    self.vectorVector = self.vectorVector * self.vectorVector
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 2))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 2))
    
    self.vectorVector = self.vectorVector * self.vectorPoint
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 3))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 3))
    
    self.vectorVector = self.vectorVector * self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 4))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 4))
  }
  
  func testMultiplicationAssignment() {
    self.vectorVector *= self.vectorVector
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 2))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 2))
    
    self.vectorVector *= self.vectorPoint
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 3))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 3))
    
    self.vectorVector *= self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 4))
    XCTAssertEqual(self.vectorVector.vertical,   pow(self.doubleValue, 4))
    
  }
  func testDivision() {
    self.vectorVector = self.vectorVector / self.vectorVector
    XCTAssertEqual(self.vectorVector.horizontal, 1)
    XCTAssertEqual(self.vectorVector.vertical, 1)

    self.vectorVector = self.vectorVector / self.vectorPoint
    XCTAssertEqual(self.vectorVector.horizontal, 0.5)
    XCTAssertEqual(self.vectorVector.vertical, 0.5)
    
    self.vectorVector = self.vectorVector / self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, 0.25)
    XCTAssertEqual(self.vectorVector.vertical, 0.25)
    
  }
  func testDivisionAssignment() {
    self.vectorVector /= self.vectorVector
    XCTAssertEqual(self.vectorVector.horizontal, 1)
    XCTAssertEqual(self.vectorVector.vertical, 1)
    
    self.vectorVector /= self.vectorPoint
    XCTAssertEqual(self.vectorVector.horizontal, 0.5)
    XCTAssertEqual(self.vectorVector.vertical, 0.5)
    
    self.vectorVector /= self.vectorSize
    XCTAssertEqual(self.vectorVector.horizontal, 0.25)
    XCTAssertEqual(self.vectorVector.vertical, 0.25)
    
  }
    
  func testMultiplicationScalar() {
    self.vectorVector = self.vectorVector * 2
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 2))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 2))
    
    self.vectorVector = self.vectorVector * 2
    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 3))
    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 3))
    
  }
  func testMultiplicationScalarAssignment() {
//    self.vectorVector *= 2
//    XCTAssertEqual(self.vectorVector.horizontal, pow(self.doubleValue, 2))
//    XCTAssertEqual(self.vectorVector.vertical, pow(self.doubleValue, 2))
    
  }
  func testDivisionScalar() {
    self.vectorVector = self.vectorVector / 2
    XCTAssertEqual(self.vectorVector.horizontal, 1)
    XCTAssertEqual(self.vectorVector.vertical, 1)
    
    
  }
  func testDivisionScalarAssignment() {
    self.vectorVector /= 2
    XCTAssertEqual(self.vectorVector.horizontal, 1)
    XCTAssertEqual(self.vectorVector.vertical, 1)
        
  }
  
  

}
