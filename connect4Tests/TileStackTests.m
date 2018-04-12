//
//  TileStackTests.m
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TileStack.h"
#import "GameBoard.h"

@interface TileStackTests : XCTestCase

@property (nonatomic, strong) TileStack* tileStackToTest;

@end


@implementation TileStackTests

@synthesize tileStackToTest;

- (void)setUp {
    [super setUp];
    self.tileStackToTest = [[TileStack alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testResetTiles {
    
    [self.tileStackToTest resetTiles];
    
    for (int i = 0; i < MAXSTACKHEIGHT; i++) {
        Tile *tileInPos =  [self.tileStackToTest.tiles objectAtIndex:i];
        XCTAssert(tileInPos.value == eTILE_EMPTY);
    }
}

- (void)testPlaceTile {
    
    for (int iLoop = 0; iLoop < 3; iLoop++) { // test to see that resetting tilestack allows re-use
        
        [self.tileStackToTest resetTiles];
        
        int placedPositionToTest = [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER1];
        
        XCTAssert(placedPositionToTest == 0);
        XCTAssert([self.tileStackToTest.tiles objectAtIndex:0].value == eTILE_PLAYER1);
        XCTAssert([self.tileStackToTest.tiles objectAtIndex:1].value == eTILE_EMPTY);
        XCTAssert([self.tileStackToTest.tiles objectAtIndex:2].value == eTILE_EMPTY);
        
        placedPositionToTest = [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER2];
        
        XCTAssert(placedPositionToTest == 1);
        XCTAssert([self.tileStackToTest.tiles objectAtIndex:0].value == eTILE_PLAYER1);
        XCTAssert([self.tileStackToTest.tiles objectAtIndex:1].value == eTILE_PLAYER2);
        XCTAssert([self.tileStackToTest.tiles objectAtIndex:2].value == eTILE_EMPTY);
        
        // now fill up the stack to max
        [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER2]; //2
        [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER2]; //3
        [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER2]; //4
        placedPositionToTest = [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER2]; //5
        
        XCTAssert(placedPositionToTest == 5);
        
        placedPositionToTest = [self.tileStackToTest placeTileForPlayer:eTILE_PLAYER2]; //7th
        
        XCTAssert(placedPositionToTest == -1);
        
    }

}

@end
