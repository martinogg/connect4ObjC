//
//  ViewControllerTests.m
//  connect4Tests
//
//  Created by martin ogg on 14/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import "MockViewModel.h"

@interface ViewControllerTests : XCTestCase

@end

@implementation ViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testViewDidLoad {
    ViewController *vcToTest = [[ViewController alloc] init];
    MockViewModel *mockViewModel = [[MockViewModel alloc] init];
    
    vcToTest.viewModel = mockViewModel;
    
    [vcToTest viewDidLoad];
    
    XCTAssert(mockViewModel.viewDidLoadCalled == true);
}

@end
