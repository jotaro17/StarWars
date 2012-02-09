//
//  Humano.m
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "Humano.h"

@implementation Humano

@synthesize razaHumano;


- (id)initWithName:(NSString *)name andRaza:(HumanoRaza)raza{
    self = [super init];
    if (self) {
        [self setName:name];
        [self setRazaHumano:raza];
    }
    return self;    
}

- (void)saluda:(Jugador*)otroJugador{
    [super saluda:otroJugador];
    
    switch ([self razaHumano]) {
        case HumanoRazaComun:
            NSLog(@"Mi raza es Humano");
            break;
        case HumanoRazaJedi:
            NSLog(@"Mi raza es Jedi");
            break;            
        default:
            break;
    }
}

@end
