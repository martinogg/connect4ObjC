//
//  TileTests.m
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Tile.h"

@interface TileTests : XCTestCase

@end

@implementation TileTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTile {
    Tile *tileToTest = [[Tile alloc] initWithValue:eTILE_EMPTY];
    XCTAssert(tileToTest.value == eTILE_EMPTY);
    
    tileToTest.value = eTILE_PLAYER1;
    XCTAssert(tileToTest.value == eTILE_PLAYER1);
}

@end
