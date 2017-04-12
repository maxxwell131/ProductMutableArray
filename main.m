//
//  main.m
//  ProductMutableArray
//
//  Created by maxxwell131 on 4/11/17.
//  Copyright © 2017 maxxwell131. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayProduct.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        ArrayProduct *arrProducts = [[ArrayProduct alloc] initWithProducts];

        
        [arrProducts showArray];
        
    }
    return 0;
}
