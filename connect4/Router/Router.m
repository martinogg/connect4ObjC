//
//  Router.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "Router.h"
#import "ViewModel.h"

@implementation Router

+(void) attachToViewController:(id<ViewControllerProtocol>) viewController {
    //TODO TEST
    ViewModel* newViewModel = [[ViewModel alloc] init];
    Router* newRouter = [[Router alloc] init];
    
    newViewModel.viewController = viewController;
    newViewModel.router = newRouter;
    
    viewController.viewModel = newViewModel;
}

@end
