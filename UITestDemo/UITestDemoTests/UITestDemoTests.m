//
//  UITestDemoTests.m
//  UITestDemoTests
//
//  Created by 李丝思 on 2017/12/3.
//  Copyright © 2017年 思. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface UITestDemoTests : XCTestCase

@property(nonatomic,strong)ViewController *vc;
@end

@implementation UITestDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
       self.vc = [[ViewController alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
        self.vc=nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    int num = [self.vc textDemo];
    XCTAssertEqual(num,100, @"值不一样测试不通过");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
