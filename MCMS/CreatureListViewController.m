//
//  ViewController.m
//  MCMS
//
//  Created by Jazz Santiago on 3/17/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "CreatureListViewController.h"
#import "MagicalCreature.h"
@interface CreatureListViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation CreatureListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *creature1 =[[MagicalCreature alloc]initWithName:@"Bigfoot"];
    MagicalCreature *creature2 =[[MagicalCreature alloc]initWithName:@"Nessi"];
    MagicalCreature *creature3 =[[MagicalCreature alloc]initWithName:@"Phoenix"];



    self.creatures =[NSMutableArray arrayWithObjects:creature1,creature2, creature3, nil];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indexPath];
    MagicalCreature *creatureRow =[self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creatureRow.name;
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}

@end
