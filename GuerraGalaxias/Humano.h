//
//  Humano.h
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "Jugador.h"

typedef enum {
    HumanoRazaComun,
    HumanoRazaJedi
} HumanoRaza;

@interface Humano : Jugador

@property (nonatomic) HumanoRaza razaHumano;

- (id)initWithName:(NSString *)name andRaza:(HumanoRaza)raza;

@end
