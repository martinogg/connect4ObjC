//
//  GameBoard.m
//  connect4
//
//  Created by martin ogg on 30/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "GameBoard.h"
#import "TileStack.h"
#import "Tile.h"
#import "FactoryProtocols.h"

@implementation GameBoard

@synthesize tileStacks;

-(instancetype) initWithTileStackFactory:(id<TileStackFactoryProtocol>)tileStackFactory {
    //TODO TEST
    if (self = [super init]) {
        
        NSMutableArray<id<TileStackProtocol>> *newTileStacks = [[NSMutableArray<id<TileStackProtocol>> alloc] init];
        for (int i = 0; i < MAXSTACKS; i++) {
            [newTileStacks addObject:[tileStackFactory createTileStack]];
        }
        
        self.tileStacks = [[NSArray<id<TileStackProtocol>> alloc] initWithArray:newTileStacks];
    }
    return self;
}

// Return int: position number of successful placement. -1 if fail
-(BOOL) placeTile:(enum TileEnum)tileType atStackPos:(int)stackPos {
    // TODO TEST
    
    id<TileStackProtocol> tileStack = [self.tileStacks objectAtIndex:stackPos];
    if (tileStack) {
        return [tileStack placeTileForPlayer:tileType];
    }
    return -1; // FAIL
}

@end
