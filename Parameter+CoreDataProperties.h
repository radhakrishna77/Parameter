//
//  Parameter+CoreDataProperties.h
//  Parameter
//
//  Created by Radha on 10/24/16.
//  Copyright © 2016 Radha. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Parameter.h"

NS_ASSUME_NONNULL_BEGIN

@interface Parameter (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *parameterName;
@property (nullable, nonatomic, retain) NSString *textView;

@end

NS_ASSUME_NONNULL_END
