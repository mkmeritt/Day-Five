//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSMutableArray *)toppings {
    
      Pizza* p = [[Pizza alloc] initWithSize:size toppings:toppings];
    
    if(self.delegate != nil){
        [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
        [self. delegate kitchenShouldUpgradeOrder:self];
    }
    
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO) {
        return nil;
    }
    
    if ([self.delegate kitchenShouldUpgradeOrder:self] == YES) {
        size = PizzaSizeLarge;
    }
        
   
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [self.delegate kitchenDidMakePizza:p];
    }
    return p;
}

-(Pizza *)largePepperoni{
    return [Pizza largePepperoni];
}
@end
