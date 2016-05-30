//
//  TestsVectorOperatable.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 30/06/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics
import VectorArithmetic

class TestsInitializerVectorOperatable : XCTestCase {
  let doubleValue = 2.0
  
  func testCGPointCustomInit() {
    let vectorPoint = CGPoint(horizontal: self.doubleValue, vertical: self.doubleValue)
    var vectorGeneric = vectorPoint
    
    XCTAssertEqual(vectorPoint.x, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorPoint.y, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  
  func testCGPointOverloadInit() {
    let vectorPoint = CGPoint(x: self.doubleValue, y: self.doubleValue)
    var vectorGeneric = vectorPoint

    XCTAssertEqual(vectorPoint.x, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorPoint.y, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)

  }

  func testCGSizeCustomInit() {
    let vectorSize = CGSize(horizontal: self.doubleValue, vertical: self.doubleValue)
    var vectorGeneric = vectorSize
    
    XCTAssertEqual(vectorSize.width, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorSize.height, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  
  func testCGSizeOverloadInit() {
    let vectorSize = CGSize(width: self.doubleValue, height: self.doubleValue)
    var vectorGeneric = vectorSize
    
    XCTAssertEqual(vectorSize.width, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorSize.height, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  func testCGVectorCustomInit() {
    let vectorVector = CGVector(horizontal: self.doubleValue, vertical: self.doubleValue)
    var vectorGeneric = vectorVector
    
    XCTAssertEqual(vectorVector.dx, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorVector.dy, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  
  func testCGVectorOverloadInit() {
    let vectorVector = CGVector(self.doubleValue,self.doubleValue)
    var vectorGeneric = vectorVector
    
    XCTAssertEqual(vectorVector.dx, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorVector.dy, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }


}
