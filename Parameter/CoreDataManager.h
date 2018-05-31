//
//  CoreDataManager.h
//  Parameter
//
//  Created by Radha on 10/24/16.
//  Copyright © 2016 Radha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataManager : NSObject

+(instancetype)sharedInstance;
-(void)insertParametersintoCoreData: (NSDictionary *)parameterDict;
-(NSArray *)fetchParameterDetails;

@end
