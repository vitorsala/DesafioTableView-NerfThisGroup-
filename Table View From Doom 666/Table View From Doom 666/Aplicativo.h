//
//  Aplicativo.h
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Categoria.h"

@interface Aplicativo : NSObject

@property NSString* nome;
@property Categoria* categoria;
@property NSString* imagem;

-(id) initWithName:(NSString *)n Categoria:(Categoria *)c Imagem: (NSString *)i;

@end
