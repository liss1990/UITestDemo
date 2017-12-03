//
//  UITestDemoUITests.m
//  UITestDemoUITests
//
//  Created by 李丝思 on 2017/12/3.
//  Copyright © 2017年 思. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UITestDemoUITests : XCTestCase
@end

@implementation UITestDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
 
 
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.

    [super tearDown];
    
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app/*@START_MENU_TOKEN@*/.buttons[@"otherBtn"]/*[[".buttons[@\"\\U70b9\\U51fb\\U8df3\\U8f6c\\U9875\\U9762\"]",".buttons[@\"otherBtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *usernameTextField = app/*@START_MENU_TOKEN@*/.textFields[@"username"]/*[[".textFields[@\"\\U8d26\\U53f7\"]",".textFields[@\"username\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [usernameTextField tap];
    [usernameTextField typeText:@"3333"];
    
    XCUIElement *pwdTextField = app/*@START_MENU_TOKEN@*/.textFields[@"pwd"]/*[[".textFields[@\"\\U5bc6\\U7801\"]",".textFields[@\"pwd\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [pwdTextField tap];
    [pwdTextField typeText:@"4"];
    [pwdTextField tap];
    [pwdTextField typeText:@"444"];
    
    
    [app/*@START_MENU_TOKEN@*/.buttons[@"loginBtn"]/*[[".buttons[@\"Button\"]",".buttons[@\"loginBtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    [app.navigationBars[@"UIView"].buttons[@"Back"] tap];
    
    
}

@end
