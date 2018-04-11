//
//  Tile.h
//  connect4
//
//  Created by martin ogg on 30/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;

enum TileEnum : NSInteger {
    eTILE_EMPTY = 1,
    eTILE_PLAYER1,
    eTILE_PLAYER2,
};

@interface Tile : NSObject

-(instancetype) init NS_UNAVAILABLE;
-(instancetype) initWithValue:(enum TileEnum)value;

@property (nonatomic) enum TileEnum value;

@end
