//
//  ArrayProduct.h
//  ProductMutableArray
//
//  Created by maxxwell131 on 4/11/17.
//  Copyright © 2017 maxxwell131. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface ArrayProduct : NSObject

@property NSArray<Product*> *arrayProduct;

-(instancetype)initWithProducts;
-(void) showArray;
-(NSString *)description;

@end
