//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    PizzaSizeNoSize,
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge,
};

@interface Pizza : NSObject

@property (nonatomic, assign) int size;

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
-(NSString*)pizzaSize:(PizzaSize)size;
-(NSMutableString*)toppings: (NSArray*)toppings;
+(Pizza *)largePepperoni;

@end
