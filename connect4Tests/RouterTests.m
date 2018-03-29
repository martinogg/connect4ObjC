//
//  RouterTests.m
//  connect4Tests
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Protocols.h"
#import "Router.h"
#import "ViewController.h"
#import "ViewModel.h"

@interface RouterTests : XCTestCase

@end

@implementation RouterTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRouterAttach {
    
    ViewController* viewControllerToReturn = [[ViewController alloc] init];
    
    [Router attachToViewController: viewControllerToReturn];
    
    XCTAssert(viewControllerToReturn.viewModel != nil);
    XCTAssert(viewControllerToReturn.viewModel.router != nil);
    XCTAssert(viewControllerToReturn.viewModel.viewController != nil);
    
}

@end