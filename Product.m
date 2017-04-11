//
//  Product.m
//  urok_19
//
//  Created by Master on 11.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@implementation Product

@synthesize price;
@synthesize weight;
@synthesize name;

-(id)initWithName:(NSString *)inputName price:(double)inputPrice weight:(int)inputWeight {
    
    self = [super init];
    if (self != nil){
        self->name = [NSString stringWithString:inputName];
        self->price = inputPrice;
        self->weight = inputWeight;
    }
    return self;
}

-(NSString *) description{
    return [NSString stringWithFormat:@"Name: %@; Price = %g; Weight = %i", self->name, self->price, self->weight];
}
@end
