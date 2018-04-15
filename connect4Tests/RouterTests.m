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
#import "NewGameState.h"
#import "PlayGameState.h"
#import "EndGameState.h"

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
    
    XCTAssert(viewControllerToReturn.viewModel.gameStates != nil);
    XCTAssert(viewControllerToReturn.viewModel.gameStates.count > 0);
    
    XCTAssert(viewControllerToReturn.viewModel.gameBoard != nil);
    XCTAssert(viewControllerToReturn.viewModel.gameBoard.tileStacks.count > 0);
    
}

-(void)testRouterCreateGameStates {
    Router* routerToTest = [[Router alloc] init];
    id<GameStateToViewModelProtocol> mockViewModel = (id<GameStateToViewModelProtocol>)[[NSObject alloc] init];
  
    NSArray<id<GameStateProtocol>> *returnedGameStates = [routerToTest createGameStatesWithViewModel:mockViewModel];
    
    XCTAssert([(NSObject *)[returnedGameStates objectAtIndex:0] isKindOfClass: [NewGameState class]]);
    XCTAssert([(NSObject *)[returnedGameStates objectAtIndex:1] isKindOfClass: [PlayGameState class]]);
    XCTAssert([(NSObject *)[returnedGameStates objectAtIndex:2] isKindOfClass: [EndGameState class]]);
    
    XCTAssert([returnedGameStates objectAtIndex:0].nextGameState == [returnedGameStates objectAtIndex:1]);
    XCTAssert([returnedGameStates objectAtIndex:1].nextGameState == [returnedGameStates objectAtIndex:2]);
    XCTAssert([returnedGameStates objectAtIndex:2].nextGameState == [returnedGameStates objectAtIndex:0]);
    
    XCTAssert([returnedGameStates objectAtIndex:0].viewModel == mockViewModel);
    XCTAssert([returnedGameStates objectAtIndex:1].viewModel == mockViewModel);
    XCTAssert([returnedGameStates objectAtIndex:2].viewModel == mockViewModel);
}



@end
