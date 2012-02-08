//
//  Equipo.m
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "Equipo.h"

@implementation Equipo

@synthesize name = _name;
@synthesize integrantes = _integrantes;

- (id)initWithName:(NSString*) name {
    self = [super init];
    if (self) {
        [self setName:name];
        [self setIntegrantes:[NSMutableArray array]];
    }
    return self;
}

@end
