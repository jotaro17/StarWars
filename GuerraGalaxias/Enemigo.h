//
//  Enemigo.h
//  GuerraGalaxias
//
//  Created by Alberto Lobo Muñoz on 08/02/12.
//  Copyright (c) 2012 Alberto Lobo Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enemigo : NSObject

@property (nonatomic, strong) NSString *name;

- (id)initWithName:(NSString*) name;

@end
