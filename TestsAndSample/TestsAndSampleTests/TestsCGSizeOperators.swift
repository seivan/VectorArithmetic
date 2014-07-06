//
//  TestsCGSizeOperators.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import CoreGraphics
import XCTest

class TestsCGSizeOperators : SuperTestsOperators, TestOperators {
  func testEqual() {
    XCTAssert(self.vectorSize == self.vectorSize)
    XCTAssert(self.vectorSize == self.vectorPoint)
    XCTAssert(self.vectorSize == self.vectorVector)
  }
  func testNotEqual() {
    XCTAssertFalse(self.vectorSize != self.vectorSize)
    XCTAssertFalse(self.vectorSize != self.vectorPoint)
    XCTAssertFalse(self.vectorSize != self.vectorVector)
    
  }
  func testLessThanOrEqual() {
    XCTAssert(self.vectorSize <= self.vectorSize)
    XCTAssert(self.vectorSize <= self.vectorPoint)
    XCTAssert(self.vectorSize <= self.vectorVector)
    self.vectorSize.width = 0.0
    self.vectorSize.height = 0.0
    XCTAssert(self.vectorSize <= self.vectorSize)
    XCTAssert(self.vectorSize <= self.vectorPoint)
    XCTAssert(self.vectorSize <= self.vectorVector)
    
    
    
  }
  func testLessThan() {
    self.vectorSize.width = 0.0
    self.vectorSize.height = 0.0
    XCTAssertFalse(self.vectorSize < self.vectorSize)
    XCTAssert(self.vectorSize < self.vectorPoint)
    XCTAssert(self.vectorSize < self.vectorVector)
    
  }
  func testMoreThanOrEqual() {
    XCTAssert(self.vectorSize >= self.vectorSize)
    XCTAssert(self.vectorSize >= self.vectorPoint)
    XCTAssert(self.vectorSize >= self.vectorVector)
    self.vectorSize.width += 1.0
    self.vectorSize.height += 1.0
    XCTAssert(self.vectorSize >= self.vectorSize)
    XCTAssert(self.vectorSize >= self.vectorPoint)
    XCTAssert(self.vectorSize >= self.vectorVector)
    
  }
  func testMoreThan() {
    self.vectorSize.width += 1.0
    self.vectorSize.height += 1.0
    XCTAssertFalse(self.vectorSize > self.vectorSize)
    XCTAssert(self.vectorSize > self.vectorPoint)
    XCTAssert(self.vectorSize > self.vectorVector)
    
  }
  func testSubtraction() {
    
    self.vectorSize = self.vectorSize - self.vectorPoint
    XCTAssertEqual(self.vectorSize.width, CGFloat(self.doubleValue-self.doubleValue))
    XCTAssertEqual(self.vectorSize.height, CGFloat(self.doubleValue-self.doubleValue))
    
    self.vectorSize = self.vectorSize - self.vectorVector
    XCTAssertEqual(self.vectorSize.width, CGFloat(-self.doubleValue))
    XCTAssertEqual(self.vectorSize.height, CGFloat(-self.doubleValue))
    
  }
  func testSubtractionAssignment() {
    self.vectorSize -= self.vectorSize
    XCTAssertEqual(self.vectorSize.width, CGFloat(self.doubleValue-self.doubleValue))
    XCTAssertEqual(self.vectorSize.height, CGFloat(self.doubleValue-self.doubleValue))
    
    self.vectorSize -= self.vectorVector
    XCTAssertEqual(self.vectorSize.width, CGFloat(-self.doubleValue))
    XCTAssertEqual(self.vectorSize.height, CGFloat(-self.doubleValue))
    
  }
  func testAddition() {
    self.vectorSize = self.vectorSize + self.vectorPoint
    XCTAssertEqual(self.vectorSize.width, CGFloat(self.doubleValue*2))
    XCTAssertEqual(self.vectorSize.height, CGFloat(self.doubleValue*2))
    
    self.vectorSize = self.vectorSize + self.vectorVector
    XCTAssertEqual(self.vectorSize.width, CGFloat(self.doubleValue*3))
    XCTAssertEqual(self.vectorSize.height, CGFloat(self.doubleValue*3))
    
  }
  func testAdditionAssignment() {
    self.vectorSize += self.vectorSize
    XCTAssertEqual(self.vectorSize.width, CGFloat(self.doubleValue*2))
    XCTAssertEqual(self.vectorSize.height, CGFloat(self.doubleValue*2))
    
    self.vectorSize += self.vectorVector
    XCTAssertEqual(self.vectorSize.width, CGFloat(self.doubleValue*3))
    XCTAssertEqual(self.vectorSize.height, CGFloat(self.doubleValue*3))
    
  }
  func testMultiplication() {
    self.vectorSize = self.vectorSize * self.vectorPoint
    XCTAssertEqual(self.vectorSize.width, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorSize.height, CGFloat(pow(self.doubleValue, 2)))
    
    self.vectorSize = self.vectorSize * self.vectorVector
    XCTAssertEqual(self.vectorSize.width, CGFloat(pow(self.doubleValue, 3)))
    XCTAssertEqual(self.vectorSize.height, CGFloat(pow(self.doubleValue, 3)))
    
    
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
    self.vectorSize = self.vectorSize * 2
    XCTAssertEqual(self.vectorSize.width, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorSize.height, CGFloat(pow(self.doubleValue, 2)))
    
    
  }
  func testMultiplicationScalarAssignment() {
    self.vectorSize *= 2
    XCTAssertEqual(self.vectorSize.width, CGFloat(pow(self.doubleValue, 2)))
    XCTAssertEqual(self.vectorSize.height, CGFloat(pow(self.doubleValue, 2)))
    
    
  }
  func testDivisionScalar() {
    self.vectorSize = self.vectorSize / 2
    XCTAssertEqual(self.vectorSize.width, 1)
    XCTAssertEqual(self.vectorSize.height, 1)
    
    
  }
  func testDivisionScalarAssignment() {
    self.vectorSize /= 2
    XCTAssertEqual(self.vectorSize.width, 1)
    XCTAssertEqual(self.vectorSize.height, 1)
    
    
  }
  
  
}
