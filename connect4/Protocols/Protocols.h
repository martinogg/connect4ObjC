//
//  Protocols.h
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Tile.h"

// Forward declarations
@protocol ViewControllerProtocol;
@protocol GameStateProtocol;
@class Tile;
@class TileStackFactory;

// protocols

@protocol RouterProtocol

-(NSArray<id<GameStateProtocol>> *) createGameStates;

@end


@protocol ViewModelProtocol

@property (nonatomic, weak) id<ViewControllerProtocol> viewController;
@property (nonatomic, strong) id<RouterProtocol> router;

@end


@protocol ViewControllerProtocol

@property (nonatomic, strong) id<ViewModelProtocol> viewModel;

@end


@protocol TileStackProtocol

-(void) resetTiles;
-(int) placeTileForPlayer:(enum TileEnum)playerTile;

@property (nonatomic, strong) NSArray<Tile *> *tiles;

@end


@protocol GameBoardProtocol

-(instancetype) initWithTileStackFactory:(TileStackFactory *)tileStackFactory;
-(instancetype) init NS_UNAVAILABLE;
    
@property (nonatomic, strong) NSArray<id<TileStackProtocol>> *tileStacks;

@end


