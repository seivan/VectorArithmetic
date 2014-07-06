//
//  TestsCGVectorOperators.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

class TestsCGVectorOperators: SuperTestsOperators, TestOperators {

  func testEqual() {
    XCTAssert(self.vectorVector == self.vectorVector)
    XCTAssert(self.vectorVector == self.vectorPoint)
    XCTAssert(self.vectorVector == self.vectorSize)
  }
  func testNotEqual() {
    XCTAssertFalse(self.vectorVector != self.vectorVector)
    XCTAssertFalse(self.vectorVector != self.vectorPoint)
    XCTAssertFalse(self.vectorVector != self.vectorSize)
    
  }
  func testLessThanOrEqual() {
    XCTAssert(self.vectorVector <= self.vectorVector)
    XCTAssert(self.vectorVector <= self.vectorPoint)
    XCTAssert(self.vectorVector <= self.vectorSize)
    self.vectorVector.dx = 0.0
    self.vectorVector.dy = 0.0
    XCTAssert(self.vectorVector <= self.vectorVector)
    XCTAssert(self.vectorVector <= self.vectorPoint)
    XCTAssert(self.vectorVector <= self.vectorSize)
    
    
    
  }
  func testLessThan() {
    self.vectorVector.dx = 0.0
    self.vectorVector.dy = 0.0
    XCTAssertFalse(self.vectorVector < self.vectorVector)
    XCTAssert(self.vectorVector < self.vectorPoint)
    XCTAssert(self.vectorVector < self.vectorSize)
    
  }
  func testMoreThanOrEqual() {
    XCTAssert(self.vectorVector >= self.vectorVector)
    XCTAssert(self.vectorVector >= self.vectorPoint)
    XCTAssert(self.vectorVector >= self.vectorSize)
    self.vectorVector.dx += 1.0
    self.vectorVector.dy += 1.0
    XCTAssert(self.vectorVector >= self.vectorVector)
    XCTAssert(self.vectorVector >= self.vectorPoint)
    XCTAssert(self.vectorVector >= self.vectorSize)
    
  }
  func testMoreThan() {
    self.vectorVector.dx += 1.0
    self.vectorVector.dy += 1.0
    XCTAssertFalse(self.vectorVector > self.vectorVector)
    XCTAssert(self.vectorVector > self.vectorPoint)
    XCTAssert(self.vectorVector > self.vectorSize)
    
  }
  func testSubtraction() {
    self.vectorVector = self.vectorVector - self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue-self.doubleValue))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue-self.doubleValue))

    self.vectorVector = self.vectorVector - self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, CGFloat(-self.doubleValue))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(-self.doubleValue))
    
    self.vectorVector = self.vectorVector - self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, CGFloat(-self.doubleValue)*2)
    XCTAssertEqual(self.vectorVector.dy, CGFloat(-self.doubleValue)*2)

  }
  func testSubtractionAssignment() {
    self.vectorVector -= self.vectorVector
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue-self.doubleValue))
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue-self.doubleValue))
    
    self.vectorVector -= self.vectorPoint
    XCTAssertEqual(self.vectorVector.dy, CGFloat(-self.doubleValue))
    XCTAssertEqual(self.vectorVector.dx, CGFloat(-self.doubleValue))
    
    self.vectorVector -= self.vectorSize
    XCTAssertEqual(self.vectorVector.dy, CGFloat(-self.doubleValue)*2)
    XCTAssertEqual(self.vectorVector.dx, CGFloat(-self.doubleValue)*2)
    
  }
  func testAddition() {
    self.vectorVector = self.vectorVector + self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue*2))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue*2))
    
    self.vectorVector = self.vectorVector + self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue*3))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue*3))
    
    self.vectorVector = self.vectorVector + self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue*4))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue*4))
    
  }
  func testAdditionAssignment() {
    self.vectorVector += self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue*2))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue*2))
    
    self.vectorVector += self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue*3))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue*3))
    
    self.vectorVector += self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, CGFloat(self.doubleValue*4))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(self.doubleValue*4))
    
  }
  func testMultiplication() {
    self.vectorVector = self.vectorVector * self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorVector = self.vectorVector * self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 3)))
    
    self.vectorVector = self.vectorVector * self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 4)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 4)))
    
    
  }
  func testMultiplicationAssignment() {
    self.vectorVector *= self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorVector *= self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 3)))
    
    self.vectorVector *= self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 4)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 4)))
    
  }
  func testDivision() {
    self.vectorVector = self.vectorVector / self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, 1)
    XCTAssertEqual(self.vectorVector.dy, 1)

    self.vectorVector = self.vectorVector / self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, 0.5)
    XCTAssertEqual(self.vectorVector.dy, 0.5)
    
    self.vectorVector = self.vectorVector / self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, 0.25)
    XCTAssertEqual(self.vectorVector.dy, 0.25)
    
  }
  func testDivisionAssignment() {
    self.vectorVector /= self.vectorVector
    XCTAssertEqual(self.vectorVector.dx, 1)
    XCTAssertEqual(self.vectorVector.dy, 1)
    
    self.vectorVector /= self.vectorPoint
    XCTAssertEqual(self.vectorVector.dx, 0.5)
    XCTAssertEqual(self.vectorVector.dy, 0.5)
    
    self.vectorVector /= self.vectorSize
    XCTAssertEqual(self.vectorVector.dx, 0.25)
    XCTAssertEqual(self.vectorVector.dy, 0.25)
    
  }
  func testMultiplicationScalar() {
    self.vectorVector = self.vectorVector * 2
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 2)))
    
  }
  func testMultiplicationScalarAssignment() {
    self.vectorVector *= 2
    XCTAssertEqual(self.vectorVector.dx, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorVector.dy, CGFloat(pow(self.doubleValue, 2)))
    
  }
  func testDivisionScalar() {
    self.vectorVector = self.vectorVector / 2
    XCTAssertEqual(self.vectorVector.dx, 1)
    XCTAssertEqual(self.vectorVector.dy, 1)
    
    
  }
  func testDivisionScalarAssignment() {
    self.vectorVector /= 2
    XCTAssertEqual(self.vectorVector.dx, 1)
    XCTAssertEqual(self.vectorVector.dy, 1)
        
  }
  
  

}
