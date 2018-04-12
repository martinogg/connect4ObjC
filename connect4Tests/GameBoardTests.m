//
//  GameBoardTests.m
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GameBoard.h"
#import "TileStackFactory.h"

@interface GameBoardTests : XCTestCase

@property (nonatomic, strong) GameBoard *gameBoardToTest;

@end

@implementation GameBoardTests

@synthesize gameBoardToTest;

- (void)setUp {
    [super setUp];
    self.gameBoardToTest = [[GameBoard alloc] initWithTileStackFactory:[[TileStackFactory alloc] init]];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGameBoardInit {
    
    for (int i = 0; i < MAXSTACKS; i++) {
        
        XCTAssert([self.gameBoardToTest.tileStacks objectAtIndex:i] != nil);
    }
}

- (void)testPlaceTilesAndResetBoard {
    
    for (int iLoop = 0; iLoop < 3; iLoop++) {
        
        [self.gameBoardToTest resetBoard];
        
        int iPlacedPosition = [self.gameBoardToTest placeTile:eTILE_PLAYER1 atStackPos:0];
        XCTAssert(iPlacedPosition == 0);
        iPlacedPosition = [self.gameBoardToTest placeTile:eTILE_PLAYER1 atStackPos:0];
        XCTAssert(iPlacedPosition == 1);
        iPlacedPosition = [self.gameBoardToTest placeTile:eTILE_PLAYER1 atStackPos:1];
        XCTAssert(iPlacedPosition == 0);
        
    }
    
}

@end
