//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"


@class Kitchen;

@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSMutableArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen*)kitchen;

@optional
-(void)kitchenDidMakePizza:(Pizza*)pizza;
@end


@interface Kitchen : NSObject{
    id <KitchenDelegate> _delegate;
}

-(Pizza *)makePizzaWithSize: (PizzaSize)size toppings:(NSMutableArray *)toppings;
-(Pizza *)largePepperoni;
@property (nonatomic, strong) id delegate;


@end