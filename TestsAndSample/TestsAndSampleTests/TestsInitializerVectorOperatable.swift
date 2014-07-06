//
//  TestsVectorOperatable.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 30/06/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

class TestsInitializerVectorOperatable : XCTestCase {
  let doubleValue = 2.0
  
  func testCGPointCustomInit() {
    var vectorPoint = CGPoint(horizontal: self.doubleValue, vertical: self.doubleValue)
    var vectorGeneric = vectorPoint
    
    XCTAssertEqual(vectorPoint.x, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorPoint.y, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  
  func testCGPointOverloadInit() {
    var vectorPoint = CGPoint(x: self.doubleValue, y: self.doubleValue)
    var vectorGeneric = vectorPoint

    XCTAssertEqual(vectorPoint.x, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorPoint.y, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)

  }

  func testCGSizeCustomInit() {
    var vectorSize = CGSize(horizontal: self.doubleValue, vertical: self.doubleValue)
    var vectorGeneric = vectorSize
    
    XCTAssertEqual(vectorSize.width, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorSize.height, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  
  func testCGSizeOverloadInit() {
    var vectorSize = CGSize(width: self.doubleValue, height: self.doubleValue)
    var vectorGeneric = vectorSize
    
    XCTAssertEqual(vectorSize.width, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorSize.height, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  func testCGVectorCustomInit() {
    var vectorVector = CGVector(horizontal: self.doubleValue, vertical: self.doubleValue)
    var vectorGeneric = vectorVector
    
    XCTAssertEqual(vectorVector.dx, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorVector.dy, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }
  
  func testCGVectorOverloadInit() {
    var vectorVector = CGVector(self.doubleValue,self.doubleValue)
    var vectorGeneric = vectorVector
    
    XCTAssertEqual(vectorVector.dx, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorVector.dy, CGFloat(self.doubleValue))
    XCTAssertEqual(vectorGeneric.horizontal, self.doubleValue)
    XCTAssertEqual(vectorGeneric.vertical, self.doubleValue)
    
  }


}
