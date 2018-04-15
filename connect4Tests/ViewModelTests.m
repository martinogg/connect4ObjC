//
//  ViewModelTests.m
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewModel.h"
#import "MockGameState.h"

@interface ViewModelTests : XCTestCase

@end

@implementation ViewModelTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEndCurrentGameState {
    ViewModel *viewModelToTest = [[ViewModel alloc] init];
    MockGameState *mockState1 = [[MockGameState alloc] init];
    MockGameState *mockState2 = [[MockGameState alloc] init];
    
    mockState1.onEnterCalled = false;
    mockState1.willLeaveCalled = false;
    mockState2.onEnterCalled = false;
    mockState2.willLeaveCalled = false;
    
    mockState1.nextGameState = mockState2;
    
    viewModelToTest.gameStates = @[mockState1, mockState2];
    
    viewModelToTest.currentGameState = mockState1;
    
    [viewModelToTest endCurrentGameState];
    
    XCTAssert(mockState1.onEnterCalled == false);
    XCTAssert(mockState1.willLeaveCalled == true);
    XCTAssert(mockState2.onEnterCalled == true);
    XCTAssert(mockState2.willLeaveCalled == false);
}

-(void)testViewDidLoad {
    ViewModel *viewModelToTest = [[ViewModel alloc] init];
    MockGameState *mockGameState = [[MockGameState alloc] init];
    viewModelToTest.gameStates = @[mockGameState];
    
    [viewModelToTest viewDidLoad];
    
    XCTAssert(viewModelToTest.currentGameState == mockGameState);
    XCTAssert(mockGameState.onEnterCalled == true);
}

@end
