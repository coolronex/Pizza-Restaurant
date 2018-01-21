//
//  Cheery Manager.h
//  PizzaRestaurant
//
//  Created by Aaron Chong on 1/20/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"


@interface Cheery_Manager : NSObject <KitchenDelegate>

- (BOOL) kitchen: (Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL) kitchenShouldUpgradeOrder: (Kitchen *)kitchen;



@end
