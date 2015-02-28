//
//  Aplicativo.m
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import "Aplicativo.h"

@implementation Aplicativo

-(id) initWithName:(NSString *)n Categoria:(Categoria *)c Imagem: (NSString *)i{
    self = [super init];
    if(self){
        _categoria = c;
        _nome = n;
        _imagem = i;
    }
    return self;
}




@end
