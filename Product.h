//
//  Product.h
//  urok_19
//
//  Created by Master on 11.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

@interface Product : NSObject{
    NSString *name;
    double price;
    int weight;
}

@property (readonly) double price;
@property (readonly) int    weight;
@property (nonatomic, copy) NSString *name;

-(id) initWithName : (NSString *) inputName price : (double) inputPrice weight : (int) inputWeight;
-(NSString *) description;

@end
