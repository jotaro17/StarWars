//
//  Equipo.m
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import "Equipo.h"
#import "Jugador.h"
#import "Enemigo.h"

@implementation Equipo

@synthesize name = _name;
@synthesize integrantes = _integrantes;

- (id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        [self setName:name];
        [self setIntegrantes:[NSMutableArray array]];
    }
    return self;
}

- (void)addIntegrante:(id)newIntegrante{
    if(newIntegrante!=nil){
        for(id unIntegrante in self.integrantes) {
            [newIntegrante saluda:unIntegrante];
            
            if ([newIntegrante isKindOfClass:[Enemigo class]]) {
                [newIntegrante cuentaDominaraGalaxia];
            }
            
        }
        [self.integrantes addObject:newIntegrante];
    }
}

- (void)peleaContra:(Equipo*)equipo{
    //Primero pegan los malos
    for (id integrante in [equipo integrantes]) {
        [integrante golpea];
    }
    //Luego Pegan los buenos y ganan!
    for (id integrante in [self integrantes]) {
        if ([integrante respondsToSelector:@selector(golpea)]) {
            [integrante golpea];
        }
    }
    NSLog(@"Ganan los buenos!!!");
}

@end
