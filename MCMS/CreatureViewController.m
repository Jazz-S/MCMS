//
//  CreatureViewController.m
//  MCMS
//
//  Created by Jazz Santiago on 3/17/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "CreatureViewController.h"
#import "CreatureListViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailsTextField;


@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = self.selectedCreature.fullName;
    self.nameLabel.text = self.selectedCreature.fullName;
    [self.nameTextField setHidden:true];
}

- (IBAction)editButtonPressed:(UIButton *)sender
{
    
    
    if (self.editing)
    {
        self.editing = false;
        [self.nameTextField setHidden:true];
        [self.detailsTextField setHidden:true];
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        self.selectedCreature.fullName = self.nameTextField.text;
        self.selectedCreature.fullName = self.detailsTextField.text;
        self.nameLabel.text = self.selectedCreature.fullName;
        self.detailsLabel.text = self.selectedCreature.details;
    }
    else
    {
        self.editing = true;
        [self.nameTextField setHidden:false];
        [self.detailsTextField setHidden:false];
        [sender setTitle:@"Done" forState:UIControlStateNormal];
    }
}







@end
