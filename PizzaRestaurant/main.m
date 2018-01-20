//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "HateAnchoviesManager.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *kitchen = [Kitchen new];
        HateAnchoviesManager* manager = [HateAnchoviesManager new];

        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            //copy the created array and make a copy & put it in a new Mutable array
            NSMutableArray* toppings = [commandWords mutableCopy];
            
            //remove first size from array
            [toppings removeObjectAtIndex:0];
            NSLog(@"Toppings are: %@", toppings);
            
            //put first word in size
            PizzaSize size = [Pizza convertStringToEnum:commandWords[0]];
            
            NSLog(@"Pizza size: %ld",size);
            
            // And then send some message to the kitchen...
            Pizza *pizzaMadeByKitchen = [kitchen makePizzaWithSize:size toppings:toppings];
            
            NSLog(@"Pizza size: %@; Pizza toppings: %@", [pizzaMadeByKitchen showPizzaSizeAsString] , toppings);
        }

    }
    return 0;
}

