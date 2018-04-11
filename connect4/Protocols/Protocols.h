//
//  Protocols.h
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;

// Forward declarations
@protocol ViewControllerProtocol;
@protocol GameStateProtocol;
@class Tile;

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
-(int) placeTileForPlayer:(Tile *)playerTile;

@property (nonatomic, strong) NSArray<Tile *> *tiles;

@end


@protocol GameBoardProtocol

@property (nonatomic, strong) NSArray<id<TileStackProtocol>> *tileStacks;

@end


