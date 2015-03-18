//
//  CreatureViewController.m
//  MCMS
//
//  Created by Jazz Santiago on 3/17/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "CreatureListViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"


@interface CreatureListViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *creatureTextField;
@property (weak, nonatomic) IBOutlet UITextField *creatureDetailsTextField;

@end

@implementation CreatureListViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature1 =[[MagicalCreature alloc]initWithName:@"Bigfoot" withDetails:@"Fluffy Fur Ball"];
    MagicalCreature *creature2 =[[MagicalCreature alloc]initWithName:@"Nessi" withDetails:@"Long neck dinosaur"];
    MagicalCreature *creature3 =[[MagicalCreature alloc]initWithName:@"Phoenix" withDetails:@"Shining golden bird"];



    self.creatures =[NSMutableArray arrayWithObjects:creature1,creature2, creature3, nil];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellID"];
    MagicalCreature *creatureRow =[self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creatureRow.fullName;
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}

- (IBAction)addCreature:(UIButton *)sender {
    NSString *creatureName = self.creatureTextField.text;
    NSString *creatureDetails = self.creatureDetailsTextField.text;
    MagicalCreature *newCreature = [[MagicalCreature alloc]initWithName:creatureName withDetails:creatureDetails];
    [self.creatures addObject:newCreature ];
    [self.tableView reloadData];
    [self.creatureTextField resignFirstResponder];
    self.creatureTextField.text= @"";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CreatureViewController *creatureVC = segue.destinationViewController;
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    MagicalCreature *theSelectedCreature = [self.creatures objectAtIndex:selectedIndexPath.row];
    creatureVC.selectedCreature = theSelectedCreature;
}

@end
