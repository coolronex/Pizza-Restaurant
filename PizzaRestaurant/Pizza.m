//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Aaron Chong on 1/19/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype) initWithPizzaSize:(PizzaSize)pizzaSize toppings:(NSArray*) toppings

{
    self = [super init];
    if (self) {
        
        _size = pizzaSize;
        _toppings = toppings;
    }
    return self;
}

+ (PizzaSize)convertStringToEnum:(NSString*) string {
    
    if ([string isEqualToString:@"small"]) {
        return SMALL;
    }
    else if ([string isEqualToString:@"medium"]) {
        return MEDIUM;
    }
    else if ([string isEqualToString:@"large"]) {
        return LARGE;
    }
    return SMALL;

}

- (NSString *) showPizzaSizeAsString {
        
        switch (self.size) {
            case 1:
                return @"small";
                break;
            case 2:
                return @"medium";
                break;
            case 3:
                return @"large";
                break;
            default:
                break;
        }
       
    }

@end
