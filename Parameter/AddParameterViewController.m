//
//  AddParameterViewController.m
//  Parameter
//
//  Created by Radha on 10/24/16.
//  Copyright © 2016 Radha. All rights reserved.
//

#import "AddParameterViewController.h"
#import "Parameter.h"
#import "CoreDataManager.h"
#import "AppDelegate.h"

@interface AddParameterViewController ()
{
    AppDelegate * appdelegate;
    NSArray * data;

}

@end

@implementation AddParameterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}


- (IBAction)addButton:(id)sender
{
    NSMutableDictionary * parameter = [[NSMutableDictionary alloc] init];
    [parameter setValue:self.parameterNameLabel.text forKey:@"ParameterName"];
    [parameter setValue:self.textView.text forKey:@"TextView"];
}
@end
