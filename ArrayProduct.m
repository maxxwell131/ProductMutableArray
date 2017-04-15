//
//  ArrayProduct.m
//  ProductMutableArray
//
//  Created by maxxwell131 on 4/11/17.
//  Copyright © 2017 maxxwell131. All rights reserved.
//

#import "ArrayProduct.h"

@implementation ArrayProduct

@synthesize arrayProduct;

- (instancetype)initWithProducts {
    NSArray *Prods = [NSArray arrayWithObjects:
                      [[Product alloc] initWithName:@"Snikers" price:12.5 weight:45],
                      [[Product alloc] initWithName:@"Mars" price:14.7 weight:55],
                      [[Product alloc] initWithName:@"Bounty" price:11.2 weight:40],
                      nil];
    
    self = [super init];
    if (self) {
        self.arrayProduct = [NSArray arrayWithArray:Prods];
    }
    return self;
}

-(void) showArray {
    NSLog(@"%@", self);
}

-(NSString *)description {
    NSMutableString *tmp = [[NSMutableString alloc] initWithCapacity:20];
    [tmp appendString:@"\n-------Product`s list--------\n"];
    for (Product *tmpProduct in self.arrayProduct) {
        [tmp appendString:[NSString stringWithFormat:@"%@ \n",  tmpProduct]];
    }
    
    return (NSString*)tmp;
}

//-(id)copyWithZone:(NSZone *)zone {
//    ArrayProduct *tmp = [[self class] allocWithZone:zone];
//    
//    return tmp;
//}

@end
