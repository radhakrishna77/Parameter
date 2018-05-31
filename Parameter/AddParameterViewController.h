//
//  AddParameterViewController.h
//  Parameter
//
//  Created by Radha on 10/24/16.
//  Copyright © 2016 Radha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddParameterViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *parameterNameLabel;
@property (strong, nonatomic) IBOutlet UITextView *textView;
- (IBAction)addButton:(id)sender;
@end
