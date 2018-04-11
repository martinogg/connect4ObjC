//
//  TileStack.m
//  connect4
//
//  Created by martin ogg on 30/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "TileStack.h"
#import "GameBoard.h"
#import "Tile.h"

@implementation TileStack

@synthesize tiles;

-(void) resetTiles {
    // TODO TEST
    NSMutableArray<Tile *> *newTiles = [[NSMutableArray<Tile *> alloc] init];
    for (int i = 0; i < MAXSTACKHEIGHT; i++) {
        [newTiles addObject:[[Tile alloc] initWithValue:eTILE_EMPTY]];
    }
    tiles = [[NSArray<Tile *> alloc] initWithArray:newTiles];
}

// return: (int) the position of the tile placed. Or -1 for fail
-(int) placeTileForPlayer:(Tile *)playerTile {
    // TODO TEST
    for (int i = 0; i < MAXSTACKHEIGHT; i++) {
        if ([tiles objectAtIndex:i].value == eTILE_EMPTY) {
            [tiles objectAtIndex:i].value = playerTile.value;
            return i;
        }
    }
    return -1;
}
@end
