//
//  main.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "NiceManager.h"
#import "MeanManager.h"

PizzaSize sizeStringToEnum(NSString *str) {
    if ([str isEqualToString:@"small"]) {
        return PizzaSizeSmall;
    }
    if ([str isEqualToString:@"medium"]) {
        return PizzaSizeMedium;
    }
    if ([str isEqualToString:@"large"]) {
        return PizzaSizeLarge;
    }
    return PizzaSizeNoSize;
}

NSString* enumToString(PizzaSize size) {
    switch (size) {
        case PizzaSizeSmall:
            return @"small";
        case PizzaSizeMedium:
            return @"medium";
        case PizzaSizeLarge:
            return @"large";
        default:
            return @"No such size";
    }
}
void logMessageWithPizza(Pizza *pizza) {
    NSString *message;
    if (!pizza) {
        message = @"Please enter a legitimate pizza size! Try again";
    } else {
        message = [NSString stringWithFormat:@"%@ pizza with %@ toppings",  enumToString(pizza.size)];
    }
    NSLog(@"%@", message);
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Kitchen *kitchen = [Kitchen new];
        NiceManager *niceManager = [NiceManager new];
        MeanManager *meanManager = [MeanManager new];
        Pizza *pizza;
        
        while(YES) {
        NSLog(@"Welcome to Pizza Restaurant\n");
            
        NSLog(@"Would you like to order from Happy Tom or Angry Mark?\n");
            
        NSLog(@"Enter T for Tom\n");
    
        NSLog(@"Enter M for Mark\n");
            
        char choiceChar[255];
            
        fgets(choiceChar, 255, stdin);
            
        NSString* choiceString = [NSString stringWithUTF8String:choiceChar];
            
        
        
        NSLog(@"Order your pizza\n");
        
        char pizzaChar[255];
        
        fgets(pizzaChar, 255, stdin);
        
        NSString* pizzaString = [NSString stringWithUTF8String:pizzaChar];
        
        NSString* sizeString = @"";
        
        if([pizzaString containsString:@"small"]) {
            sizeString = @"small";
        }
        
        else if([pizzaString containsString:@"medium"]) {
              sizeString = @"medium";
        }
        
        else if([pizzaString containsString:@"large"]) {
              sizeString = @"large";
        }
        
        NSMutableArray* toppingsArray = [[NSMutableArray alloc] init];
        
        if([pizzaString containsString:@"pepperoni"]) {
            [toppingsArray addObject:@"pepperoni"];
        }
        
        if([pizzaString containsString:@"cheese"]) {
            [toppingsArray addObject:@"cheese"];
        }
        
        if([pizzaString containsString:@"ham"]) {
            [toppingsArray addObject:@"ham"];
        }
        
        if([pizzaString containsString:@"pineapple"]) {
            [toppingsArray addObject:@"pineapple"];
        }
            
        if([pizzaString containsString:@"anchovies"]) {
            [toppingsArray addObject:@"anchovies"];
        }
          
        PizzaSize size = sizeStringToEnum(sizeString);
            
            if (size == PizzaSizeNoSize) {
                logMessageWithPizza(nil);
                continue;
            }
 
       
            if([choiceString containsString:@"T"]) {
                [niceManager kitchenShouldUpgradeOrder:kitchen];
                [niceManager kitchenDidMakePizza:pizza];
                [niceManager kitchen:kitchen shouldMakePizzaOfSize:size andToppings:toppingsArray];
            }
      
            if([choiceString containsString:@"M"]) {
                [meanManager kitchenShouldUpgradeOrder:kitchen];
                [meanManager kitchen:kitchen shouldMakePizzaOfSize:size andToppings:toppingsArray];
            }
        }
    }
    return 0;
}
