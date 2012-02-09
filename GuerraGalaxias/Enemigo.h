//
//  Enemigo.h
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pelear.h"

@interface Enemigo : NSObject <Pelear>

@property (nonatomic, strong) NSString *name;

- (id)initWithName:(NSString *)name;
- (void)saluda:(Enemigo*)otroEnemigo;
- (void)cuentaDominaraGalaxia;

@end
