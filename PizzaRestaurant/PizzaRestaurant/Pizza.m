//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if(self = [super init]){
        
        NSString* s = [self pizzaSize:size];
        
        NSLog(@"You ordered %@ %@", s, toppings);
        self.size = size;
}
    
    return self;
}

-(NSString*)pizzaSize:(PizzaSize)size{
    
    NSString* s = @"";
    
    switch (size) {
        case PizzaSizeNoSize:
            s = @"no size";
            break;
        case PizzaSizeSmall:
            s = @"small";
            break;
            
        case PizzaSizeMedium:
            s = @"medium";
            break;
            
        case PizzaSizeLarge:
            s = @"large";
            break;
    }

    return s;
}

-(NSString *)toppings:(NSArray *)Toppings{
    
    NSMutableString* s = [[NSMutableString alloc] init];
    
    for(NSString* object in Toppings){
        [s appendFormat:@" %@", object];
    }
    
    return s;
    
}

+(Pizza*)largePepperoni {
    return [Pizza largePepperoni];

}



@end
