//
//  Cheery Manager.m
//  PizzaRestaurant
//
//  Created by Aaron Chong on 1/20/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Cheery Manager.h"
@class Kitchen;


@implementation Cheery_Manager

- (BOOL) kitchen: (Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    return YES;
}

- (BOOL) kitchenShouldUpgradeOrder: (Kitchen *)kitchen {
    
    NSLog(@"Cheery Manager: Here's your pizza");
    
    return YES;
}


@end
