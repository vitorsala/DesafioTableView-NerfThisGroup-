//
//  Categoria.m
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import "Categoria.h"

@implementation Categoria

-(id)initWithNome: (NSString *)n Chave: (int)c{
    self = [super init];

    if(self){
        _chave = c;
        _nome = n;
    }

    return self;

}

@end
