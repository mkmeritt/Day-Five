//
//  MeanManager.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-07-04.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "MeanManager.h"

@implementation MeanManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSMutableArray *)toppings{
    
    [kitchen makePizzaWithSize:size toppings:toppings];
    
    if ([toppings containsObject:@"anchovies"]) {
        NSLog(@"No anchovies!!\n");
        return NO;
    }
    
    return YES;
    
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

@end
