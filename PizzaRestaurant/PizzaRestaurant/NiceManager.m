//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-07-04.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "NiceManager.h"

@implementation NiceManager

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thank you come again!\n");
}

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSMutableArray *)toppings{
    
    [kitchen makePizzaWithSize:size toppings:toppings];
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    
    return YES;
}

@end
