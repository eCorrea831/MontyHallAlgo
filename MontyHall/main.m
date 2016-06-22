//
//  main.m
//  MontyHall
//
//  Created by Aditya Narayan on 6/21/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Door.h"
#import "Utilities.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Door * door1 = [[Door alloc]init];
        Door * door2 = [[Door alloc]init];
        Door * door3 = [[Door alloc]init];
        Door * door4 = [[Door alloc]init];
        Door * door5 = [[Door alloc]init];
        
        NSMutableArray * doors = [[NSMutableArray alloc]initWithObjects:door1, door2, door3, door4, door5, nil];
        
        Utilities * utility = [[Utilities alloc]init];
        [utility calculateChanceForEachDoorinDoorsArray:doors];
        
        Door * chosenDoor = door1;
        
        NSLog(@"Each door has %f%% chance of having a car.", chosenDoor.chance);
        
        for (int doorIndex = 0; doorIndex < doors.count - 1; doorIndex++) {
            if (doors[doorIndex] != chosenDoor) {
                int randomIndex = arc4random_uniform(doors.count);
                [doors removeObjectAtIndex:randomIndex];
            }
        }
        
        Door * otherDoor;
        
        for (Door * door in doors) {
            if (door != chosenDoor) {
                otherDoor = door;
            }
        }
        
        [utility calculateChanceForEachDoorinDoorsArray:doors];
        
        NSLog(@"The chosen door has a %f%% chance and the other door has %f%% chance.", chosenDoor.chance, otherDoor.chance);
        
    }
    return 0;
}
