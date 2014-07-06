//
//  TestsOperatorsVectorOperatable.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import CoreGraphics
import XCTest

class TestsCGPointOperators : SuperTestsOperators, TestOperators {
  func testEqual() {
   XCTAssert(self.vectorPoint == self.vectorPoint)
   XCTAssert(self.vectorPoint == self.vectorSize)
   XCTAssert(self.vectorPoint == self.vectorVector)
  }
  func testNotEqual() {
    XCTAssertFalse(self.vectorPoint != self.vectorPoint)
    XCTAssertFalse(self.vectorPoint != self.vectorSize)
    XCTAssertFalse(self.vectorPoint != self.vectorVector)
    
  }
  func testLessThanOrEqual() {
    XCTAssert(self.vectorPoint <= self.vectorPoint)
    XCTAssert(self.vectorPoint <= self.vectorSize)
    XCTAssert(self.vectorPoint <= self.vectorVector)
    self.vectorPoint.x = 0.0
    self.vectorPoint.y = 0.0
    XCTAssert(self.vectorPoint <= self.vectorSize)
    XCTAssert(self.vectorPoint <= self.vectorVector)
    
    

  }
  func testLessThan() {
    self.vectorPoint.x = 0.0
    self.vectorPoint.y = 0.0
    XCTAssertFalse(self.vectorPoint < self.vectorPoint)
    XCTAssert(self.vectorPoint < self.vectorSize)
    XCTAssert(self.vectorPoint < self.vectorVector)
    
  }
  func testMoreThanOrEqual() {
    XCTAssert(self.vectorPoint >= self.vectorPoint)
    XCTAssert(self.vectorPoint >= self.vectorSize)
    XCTAssert(self.vectorPoint >= self.vectorVector)
    self.vectorPoint.x += 1.0
    self.vectorPoint.y += 1.0
    XCTAssert(self.vectorPoint >= self.vectorPoint)
    XCTAssert(self.vectorPoint >= self.vectorSize)
    XCTAssert(self.vectorPoint >= self.vectorVector)
    
  }
  func testMoreThan() {
    self.vectorPoint.x += 1.0
    self.vectorPoint.y += 1.0
    XCTAssert(self.vectorPoint >= self.vectorPoint)
    XCTAssert(self.vectorPoint >= self.vectorSize)
    XCTAssert(self.vectorPoint >= self.vectorVector)
    
  }
  func testSubtraction() {
    self.vectorPoint = self.vectorPoint - self.vectorPoint
    XCTAssertEqual(self.vectorPoint.x, CGFloat(self.doubleValue-self.doubleValue))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(self.doubleValue-self.doubleValue))

    self.vectorPoint = self.vectorPoint - self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, CGFloat(-self.doubleValue))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(-self.doubleValue))
    
    self.vectorPoint = self.vectorPoint - self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, CGFloat(-self.doubleValue*2))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(-self.doubleValue*2))

  }
  func testSubtractionAssignment() {
    self.vectorPoint -= self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, CGFloat(self.doubleValue-self.doubleValue))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(self.doubleValue-self.doubleValue))
    
    self.vectorPoint -= self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, CGFloat(-self.doubleValue))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(-self.doubleValue))
    
  }
  func testAddition() {
    self.vectorPoint = self.vectorPoint + self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, CGFloat(self.doubleValue*2))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(self.doubleValue*2))
    
    self.vectorPoint = self.vectorPoint + self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, CGFloat(self.doubleValue*3))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(self.doubleValue*3))

  }
  func testAdditionAssignment() {
    self.vectorPoint += self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, CGFloat(self.doubleValue*2))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(self.doubleValue*2))
    
    self.vectorPoint += self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, CGFloat(self.doubleValue*3))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(self.doubleValue*3))

  }
  func testMultiplication() {
    self.vectorPoint = self.vectorPoint * self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorPoint = self.vectorPoint * self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 3)))

    
  }
  func testMultiplicationAssignment() {
    self.vectorPoint *= self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorPoint *= self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 3)))

  }
  func testDivision() {
    self.vectorPoint = self.vectorPoint / self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, 1)
    XCTAssertEqual(self.vectorPoint.y, 1)
    
    self.vectorPoint = self.vectorPoint / self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, 0.5)
    XCTAssertEqual(self.vectorPoint.y, 0.5)

  }
  func testDivisionAssignment() {
    self.vectorPoint /= self.vectorSize
    XCTAssertEqual(self.vectorPoint.x, 1)
    XCTAssertEqual(self.vectorPoint.y, 1)
    
    self.vectorPoint /= self.vectorVector
    XCTAssertEqual(self.vectorPoint.x, 0.5)
    XCTAssertEqual(self.vectorPoint.y, 0.5)

  }
  func testMultiplicationScalar() {
    self.vectorPoint = self.vectorPoint * 2
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorPoint = self.vectorPoint * 2
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 3)))

  }
  func testMultiplicationScalarAssignment() {
    self.vectorPoint *= 2
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorPoint *= 2
    XCTAssertEqual(self.vectorPoint.x, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorPoint.y, CGFloat(pow(self.doubleValue, 3)))
    
  }
  func testDivisionScalar() {
    self.vectorPoint = self.vectorPoint / 2
    XCTAssertEqual(self.vectorPoint.x, 1)
    XCTAssertEqual(self.vectorPoint.y, 1)
    
    self.vectorPoint = self.vectorPoint / 2
    XCTAssertEqual(self.vectorPoint.x, 0.5)
    XCTAssertEqual(self.vectorPoint.y, 0.5)

  }
  func testDivisionScalarAssignment() {
    self.vectorPoint /= 2
    XCTAssertEqual(self.vectorPoint.x, 1)
    XCTAssertEqual(self.vectorPoint.y, 1)
    
    self.vectorPoint /= 2
    XCTAssertEqual(self.vectorPoint.x, 0.5)
    XCTAssertEqual(self.vectorPoint.y, 0.5)
 
  }


}
