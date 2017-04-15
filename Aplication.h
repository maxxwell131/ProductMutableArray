//
//  Aplication.h
//  ProductMutableArray
//
//  Created by maxxwell131 on 4/12/17.
//  Copyright © 2017 maxxwell131. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayProduct.h"
#import "Product.h"

extern NSString *const menuString;

@interface Aplication : NSObject


-(void)start;
+(NSString*)stringInputFromUserWithArgument:(NSString*)inputArgument;
+(NSString*)stringInputProductName;
+(NSNumber*)doubleInputProductPrice;
+(NSNumber*)intInputProductWeight;

+(NSNumber*)menuItemSelect;

//-(ArrayProduct*)addNewProduct;
//-(ArrayProduct*)removeProductByIndex:(NSUInteger)index;

@end

