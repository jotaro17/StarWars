//
//  Humano.m
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "Humano.h"

@interface Humano()
- (NSString*)razaToString:(HumanoRaza)raza;
@end

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
    NSLog(@"Mi Raza es: %@", [self razaToString:[self razaHumano]]);
}

#pragma mark - Metodos Privados
- (NSString*)razaToString:(HumanoRaza)raza{
    switch (raza) {
        case HumanoRazaComun:
            return @"HumanoRazaComun";
            break;
        case HumanoRazaJedi:
            return @"HumanoRazaJedi";
            break;            
        default:
            break;
    }
}

#pragma mark - Metodos Protocolo Pelear
- (void)golpea{
    NSLog(@"El Humano %@ golpea!",[self name]);
}


@end
