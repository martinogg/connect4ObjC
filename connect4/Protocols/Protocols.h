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

// protocols

@protocol RouterProtocol
    
@end


@protocol ViewModelProtocol

@property (nonatomic, weak) id<ViewControllerProtocol> viewController;
@property (nonatomic, strong) id<RouterProtocol> router;

@end


@protocol ViewControllerProtocol

@property (nonatomic, strong) id<ViewModelProtocol> viewModel;

@end



