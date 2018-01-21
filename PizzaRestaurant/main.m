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
#import "Cheery Manager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *kitchen = [Kitchen new];
        HateAnchoviesManager* hateAnchoviesManager = [HateAnchoviesManager new];
        Cheery_Manager *cheeryManager = [Cheery_Manager new];
        
        while (TRUE) {
            
            
            
            NSLog(@"Input 1 for HateAnchoviesManager. Input 2 for CheeryManager");
            
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputManagerString = [[NSString alloc] initWithUTF8String:str];
            inputManagerString = [inputManagerString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputManagerString isEqualToString:@"1"]) {
                
                kitchen.delegate = hateAnchoviesManager;
                
            } else {
                
                kitchen.delegate = cheeryManager;
                
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            
            NSLog(@"> ");
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
            
            Pizza *pizza = [kitchen makePizzaWithSize:size toppings:toppings];
            
            if (pizza) {
                NSLog(@"Pizza size: %@, Pizza toppings: %@", [pizza showPizzaSizeAsString], pizza.toppings );
            } else {
                NSLog(@"No pizza");
            }
        }
        return 0;
    }
}

