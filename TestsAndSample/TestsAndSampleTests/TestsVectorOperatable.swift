//
//  TestsVectorOperatable.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 30/06/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

class TestsVectorOperatable: XCTestCase {
  let expected = 2.0
  
  func testCGPointInitializer() {
    let p = CGPoint(horizontal: self.expected, vertical: self.expected)
    XCTAssertEqual(p.x, CGFloat(self.expected))
    XCTAssertEqual(p.y, CGFloat(self.expected))
    
    #if !(arch(x86_64) || arch(arm64))
      let newP = CGPoint(horizontal: expected, vertical: expected)
      XCTAssertEqual(newP.x, CGFloat(self.expected))
      XCTAssertEqual(newP.y, CGFloat(self.expected))
    #endif

  }
  
  func testCGPointSetters() {
    var p = CGPoint(horizontal: self.expected, vertical: self.expected)
    p.horizontal = self.expected*2
    p.vertical = self.expected*2
    
    
    XCTAssertEqual(p.x, CGFloat(self.expected*2))
    XCTAssertEqual(p.y, CGFloat(self.expected*2))
    XCTAssertEqual(p.vertical, self.expected*2)
    XCTAssertEqual(p.horizontal, self.expected*2)
    
    #if !(arch(x86_64) || arch(arm64))
      p = CGPoint(horizontal: self.expected, vertical: self.expected)
      p.horizontal = self.expected*2
      p.vertical = self.expected*2
      XCTAssertEqual(p.x, CGFloat(self.expected*2))
      XCTAssertEqual(p.y, CGFloat(self.expected*2))
      XCTAssertEqual(p.vertical, self.expected*2)
      XCTAssertEqual(p.horizontal, self.expected*2)
    #endif
    
  }


}
