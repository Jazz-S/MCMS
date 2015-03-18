//
//  MagicalCreature.h
//  MCMS
//
//  Created by Jazz Santiago on 3/17/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject
@property NSString *fullName;
@property NSString *details;


-(instancetype)initWithName:(NSString *)name withDetails:(NSString *)details;

@end

