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
    
    ArrayProduct *arrProducts = [[ArrayProduct alloc] initWithProducts];
    [self showMenu];
    [arrProducts showArray];
}

//------------menu----------
-(void)showMenu {
    NSString *const menuString = [NSString stringWithFormat:@"\n 1 - Add New Product In Array\n 2 - Remove Product By Index\n 3 - Show All Product\n 4 - Sort Product By name\n 5 - Sort Product By price\n 6 - Sort Product By wight\n 7 - Load Data\n 8 - Sava Data\n 0 - Exit\n"];

    NSLog(@"%@",menuString);
}

-(NSUInteger)menuController {
//    NSNumber *menuSelect = [[NSNumber alloc] init];
    NSUInteger menuSelect;
    
    do {
        do {
            menuSelect = [[Aplication menuItemSelect] integerValue];
        } while (menuSelect < ExitMenu && menuSelect >SaveData);
        
        switch (menuSelect) {
            case ExitMenu:
                return 0;
                break;
            case AddNewProductInArray: {
                break;
            }
            case RemoveProductByIndex: {
                break;
            }
            case ShowAllProduct: {
                break;
            }
            default:
                break;
        }

    } while (menuSelect != ExitMenu);
        return 0;
}

+(NSNumber*)menuItemSelect {
    return [NSNumber numberWithInt:[[self stringInputFromUserWithArgument:@"Select menu"] intValue]];
    
}
//------------menu----------


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
