//
//  MagicalCreature.m
//  MCMS
//
//  Created by Jazz Santiago on 3/17/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature



-(instancetype)initWithName:(NSString *)name
{
    self =[super init];
    self.fullName = name;

    return self;
}

@end