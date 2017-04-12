//
//  Aplication.m
//  ProductMutableArray
//
//  Created by Олег Чудновский on 4/12/17.
//  Copyright © 2017 OlegChudnovskiy. All rights reserved.
//

#import "Aplication.h"

@implementation Aplication

-(void)start {
    ArrayProduct *arrProducts = [[ArrayProduct alloc] initWithProducts];
    
    [arrProducts showArray];
}


@end
