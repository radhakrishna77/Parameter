//
//  ViewController.h
//  Parameter
//
//  Created by Radha on 10/24/16.
//  Copyright © 2016 Radha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray * parameterArray;
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)addParameter:(id)sender;


@end

