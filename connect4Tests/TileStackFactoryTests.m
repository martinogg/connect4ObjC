//
//  TileStackFactoryTests.m
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TileStackFactory.h"

@interface TileStackFactoryTests : XCTestCase

@end

@implementation TileStackFactoryTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCreateTileStack {
    TileStackFactory *factoryToTest = [[TileStackFactory alloc] init];
    XCTAssert([factoryToTest createTileStack] != nil);
}

@end
