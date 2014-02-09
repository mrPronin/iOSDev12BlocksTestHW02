//
//  RITStudent.m
//  12BlocksTestHW02
//
//  Created by Pronin Alexander on 09.02.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITStudent.h"

@implementation RITStudent

- (NSString*) description {
    return [NSString stringWithFormat:
            @"%@ %@",
            _lastName,
            _name];
}

@end
