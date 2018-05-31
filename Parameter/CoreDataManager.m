//
//  CoreDataManager.m
//  Parameter
//
//  Created by Radha on 10/24/16.
//  Copyright © 2016 Radha. All rights reserved.
//

#import "CoreDataManager.h"
#import "AppDelegate.h"

@implementation CoreDataManager

+(instancetype)sharedInstance
{
    static CoreDataManager * sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CoreDataManager alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}
-(void)insertParametertoCoreData: (NSDictionary *)contactDict {
    AppDelegate * appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    NSManagedObject *parameter = [NSEntityDescription insertNewObjectForEntityForName:@"Parameter" inManagedObjectContext:context];
    [parameter setValue:parameterDict[@"ParameterName"] forKey:@"ParameterName"];
    [parameter setValue:parameterDict[@"TextView"] forKey:@"TextView"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
}

-(NSArray *)fetchParameterDetails {
    AppDelegate * appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    NSFetchRequest * fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity1 = [NSEntityDescription entityForName:@"Parameter" inManagedObjectContext:context];
    
    [fetchRequest setEntity:entity1];
    
    NSError *error;
    
    NSArray * array = [context executeFetchRequest:fetchRequest error:&error];
    return array;
    
}


@end
