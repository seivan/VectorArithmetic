//
//  TestsVectorOperatable.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 30/06/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

class TestsInitializerVectorOperatable : SuperTestsVectorOperatable {

  
  func testCGPointCustomInit() {
    self.vectorPoint = CGPoint(horizontal: self.doubleValue, vertical: self.doubleValue)
    self.vectorGeneric = self.vectorPoint!
    
    XCTAssertEqual(self.vectorPoint!.x, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorPoint!.y, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorGeneric!.horizontal, self.doubleValue)
    XCTAssertEqual(self.vectorGeneric!.vertical, self.doubleValue)
    
  }
  
  func testCGPointOverloadInit() {
    self.vectorPoint = CGPoint(x: self.doubleValue, y: self.doubleValue)
    self.vectorGeneric = self.vectorPoint!

    XCTAssertEqual(self.vectorPoint!.x, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorPoint!.y, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorGeneric!.horizontal, self.doubleValue)
    XCTAssertEqual(self.vectorGeneric!.vertical, self.doubleValue)

  }

  func testCGSizeCustomInit() {
    self.vectorSize = CGSize(horizontal: self.doubleValue, vertical: self.doubleValue)
    self.vectorGeneric = self.vectorSize!
    
    XCTAssertEqual(self.vectorSize!.width, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorSize!.height, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorGeneric!.horizontal, self.doubleValue)
    XCTAssertEqual(self.vectorGeneric!.vertical, self.doubleValue)
    
  }
  
  func testCGSizeOverloadInit() {
    self.vectorSize = CGSize(width: self.doubleValue, height: self.doubleValue)
    self.vectorGeneric = self.vectorSize!
    
    XCTAssertEqual(self.vectorSize!.width, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorSize!.height, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorGeneric!.horizontal, self.doubleValue)
    XCTAssertEqual(self.vectorGeneric!.vertical, self.doubleValue)
    
  }
  func testCGVectorCustomInit() {
    self.vectorVector = CGVector(horizontal: self.doubleValue, vertical: self.doubleValue)
    self.vectorGeneric = self.vectorVector!
    
    XCTAssertEqual(self.vectorVector!.dx, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorVector!.dy, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorGeneric!.horizontal, self.doubleValue)
    XCTAssertEqual(self.vectorGeneric!.vertical, self.doubleValue)
    
  }
  
  func testCGVectorOverloadInit() {
    self.vectorVector = CGVector(self.doubleValue,self.doubleValue)
    self.vectorGeneric = self.vectorVector!
    
    XCTAssertEqual(self.vectorVector!.dx, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorVector!.dy, CGFloat(self.doubleValue))
    XCTAssertEqual(self.vectorGeneric!.horizontal, self.doubleValue)
    XCTAssertEqual(self.vectorGeneric!.vertical, self.doubleValue)
    
  }


}
