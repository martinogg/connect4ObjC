//
//  TileStackFactory.m
//  connect4
//
//  Created by martin ogg on 11/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "TileStackFactory.h"
#import "TileStack.h"

@implementation TileStackFactory

-(id<TileStackProtocol>) createTileStack {
    // TODO TEST
    return [[TileStack alloc] init];
}

@end
