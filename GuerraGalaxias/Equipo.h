//
//  Equipo.h
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Equipo : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *integrantes;

- (id)initWithName:(NSString *)name;
- (void)addIntegrante:(id)newIntegrante;
- (void)peleaContra:(Equipo*)equipo;

@end
