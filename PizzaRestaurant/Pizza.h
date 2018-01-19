//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Aaron Chong on 1/19/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, PizzaSize) {
    SMALL=1, MEDIUM, LARGE
};

@interface Pizza : NSObject 

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray* toppings;

- (NSString *) showPizzaSizeAsString;
- (instancetype) initWithPizzaSize: (PizzaSize)pizzaSize toppings:(NSArray*) toppings;
+ (PizzaSize)convertStringToEnum:(NSString*) string;

@end
