//
//  Aplication.m
//  ProductMutableArray
//
//  Created by maxxwell131 on 4/12/17.
//  Copyright © 2017 maxxwell131. All rights reserved.
//

#import "Aplication.h"

enum NSUInteger
{
    ExitMenu,
    AddNewProductInArray = 1,
    RemoveProductByIndex,
    ShowAllProduct,
    SortProductByName,
    SortProductByPrice,
    SortProductByWight,
    LoadData,
    SaveData,
} MENU_ITEM_SELECT;



@implementation Aplication


-(void)start {
    
    [self menuController];
}

//------------menu----------
+(void)showMenu {
    NSString *const menuString = [NSString stringWithFormat:@"\n 1 - Add New Product In Array\n 2 - Remove Product By Index\n 3 - Show All Product\n 4 - Sort Product By name\n 5 - Sort Product By price\n 6 - Sort Product By wight\n 7 - Load Data\n 8 - Sava Data\n 0 - Exit\n"];

    NSLog(@"%@",menuString);
}

-(void)menuController {
//    NSNumber *menuSelect = [[NSNumber alloc] init];
    NSUInteger menuSelect;
    NSArray *Prods = [NSArray arrayWithObjects:
                      [[Product alloc] initWithName:@"Snikers" price:12.5 weight:45],
                      [[Product alloc] initWithName:@"Mars" price:14.7 weight:55],
                      [[Product alloc] initWithName:@"Bounty" price:11.2 weight:40],
                      nil];

    NSMutableArray *arrProducts = [[NSMutableArray alloc] initWithArray:Prods];

    
    
    do {
        do {
            [Aplication showMenu];
            menuSelect = [[Aplication menuItemSelect] integerValue];
        } while (menuSelect < ExitMenu && menuSelect > SaveData);//-----TODO don`t work
        
        switch (menuSelect) {
            case ExitMenu:
                //return 0;
                break;
            
            case AddNewProductInArray: {
                NSLog(@"AddNewProductInArray");
                [arrProducts addObject:[[Product alloc]
                                     initWithName:[Aplication stringInputProductName]
                                     price:[[Aplication doubleInputProductPrice] doubleValue]
                                     weight:[[Aplication intInputProductWeight] intValue]]];
                break;
            }
            case RemoveProductByIndex: {
                NSLog(@"RemoveProductByIndex");
                
                NSNumber *index = [NSNumber numberWithInt:[[Aplication stringInputFromUserWithArgument:@"index product for delete"] intValue]];
                [self removeProductInArray:arrProducts ByIndex: [index intValue]];
                break;
            }
            case ShowAllProduct: {
                NSLog(@"ShowAllProduct");
                NSLog(@"%@", [self showProduct:arrProducts]);
                break;
            }
            case SortProductByName: {
                NSLog(@"SortProductByName");
                [arrProducts sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
                    Product *product1 = (Product*) obj1;
                    Product *product2 = (Product*) obj2;
                    return [product1.name compare:product2.name ];
                }];
                
                break;
            }
            case SortProductByPrice: {
                NSLog(@"SortProductByPrice");
                [arrProducts sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
                    Product *product1 = (Product*) obj1;
                    Product *product2 = (Product*) obj2;
                    if (product1.price > product2.price) {
                        return NSOrderedDescending;
                    }
                    if (product1.price < product2.price) {
                        return NSOrderedAscending;
                    }
                    return NSOrderedSame;
                }];
                break;
            }
            case SortProductByWight: {
                NSLog(@"SortProductByWight");
                [arrProducts sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
                    Product *product1 = (Product*) obj1;
                    Product *product2 = (Product*) obj2;
                    if (product1.weight > product2.weight) {
                        return NSOrderedDescending;
                    }
                    if (product1.weight < product2.weight) {
                        return NSOrderedAscending;
                    }
                    return NSOrderedSame;
                }];

                break;
            }
            case LoadData: {
                NSLog(@"LoadData");
                break;
            }
            case SaveData: {
                NSLog(@"SaveData");
                break;
            }
        }

    } while (menuSelect != ExitMenu);
}

+(NSNumber*)menuItemSelect {
    return [NSNumber numberWithInt:[[self stringInputFromUserWithArgument:@"Select menu"] intValue]];
    
}
//------------menu----------

-(NSString*)showProduct:(NSMutableArray*)inputArrProduct {
    NSMutableString *tmp = [[NSMutableString alloc] initWithCapacity:20];
    [tmp appendString:@"\n-------Product`s list--------\n"];
    for (Product *tmpProduct in inputArrProduct) {
        [tmp appendString:[NSString stringWithFormat:@"%@ \n",  tmpProduct]];
    }
    [tmp appendString:@"\n-------Product`s list--------\n"];
    return [tmp copy];
}

-(void)removeProductInArray:(NSMutableArray*)inputArray ByIndex:(int)index {
    [inputArray removeObjectAtIndex:index];
}

//--------------------------
+(NSString*)stringInputFromUserWithArgument:(NSString *)inputArgument {
    char inputChar[254] = {0};
    do
    {
        NSLog(@"\ninput %@", inputArgument);
        scanf("%s",inputChar);
    }
    while (inputChar[0] == 0);
    
    NSString *userInput = [NSString stringWithUTF8String:inputChar];
    return userInput;
}

+(NSString*)stringInputProductName{
    return [self stringInputFromUserWithArgument:@"Product name"];
}

+(NSNumber*)doubleInputProductPrice {
    return [NSNumber numberWithDouble:[[self stringInputFromUserWithArgument:@"Product price"] doubleValue]];
}

+(NSNumber*)intInputProductWeight {
    return [NSNumber numberWithInt:[[self stringInputFromUserWithArgument:@"Product weight"] intValue]];

}


@end
