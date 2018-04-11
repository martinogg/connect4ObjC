//
//  GameBoard.m
//  connect4
//
//  Created by martin ogg on 30/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "GameBoard.h"
#import "TileStack.h"

@implementation GameBoard

@synthesize tileStacks;

-(instancetype) init {
    //TODO TEST
    if (self = [super init]) {
        
        NSMutableArray<TileStack *> *newTileStacks = [[NSMutableArray<TileStack *> alloc] init];
        for (int i = 0; i < MAXSTACKS; i++) {
            [newTileStacks addObject:[[TileStack alloc] init]];
        }
        
        self.tileStacks = [[NSArray<TileStack *> alloc] initWithArray:newTileStacks];
    }
    return self;
}

@end
