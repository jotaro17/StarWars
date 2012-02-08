//
//  Enemigo.m
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "Enemigo.h"

@implementation Enemigo

@synthesize name = _name;

- (id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        [self setName:name];
    }
    return self;
}

@end
