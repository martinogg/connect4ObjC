//
//  Tile.m
//  connect4
//
//  Created by martin ogg on 30/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "Tile.h"

@implementation Tile

@synthesize value;

-(instancetype) initWithValue:(enum TileEnum)value {
    if (self = [super init]) {
        self.value = value;
    }
    return self;
}
@end
