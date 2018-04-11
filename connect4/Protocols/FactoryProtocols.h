//
//  FactoryProtocols.h
//  connect4
//
//  Created by martin ogg on 11/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;

// forward declarations
@protocol TileStackProtocol;

@protocol TileStackFactoryProtocol

-(id<TileStackProtocol>) createTileStack;

@end
