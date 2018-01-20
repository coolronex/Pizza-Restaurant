//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Aaron Chong on 1/19/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "HateAnchoviesManager.h"
#import "Pizza.h"

@implementation HateAnchoviesManager

- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    //if there's anchovies in toppings array then it this method to no

    for (NSString* topping in toppings) {
        BOOL isAnchovies = [topping isEqualToString: @"anchovies"];
        if (isAnchovies) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
        return NO;
    }
  



@end
