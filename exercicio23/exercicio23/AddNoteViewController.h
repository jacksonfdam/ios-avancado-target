//
//  AddNoteViewController.h
//  exercicio23
//
//  Created by Targettrust Treinamentos on 12/15/14.
//  Copyright (c) 2015 Targettrust Treinamentos. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface AddNoteViewController : UITableViewController
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *noteTextField;

@end
