//
//  Utilities.m
//  MontyHall
//
//  Created by Aditya Narayan on 6/21/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "Utilities.h"

@implementation Utilities

- (void)calculateChanceForEachDoorinDoorsArray:(NSMutableArray *)array {
    for (Door * door in array) {
        door.chance = 100/array.count;
    }
}

@end
