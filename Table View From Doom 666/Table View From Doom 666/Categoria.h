//
//  Categoria.h
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Categoria : NSObject

@property NSString* nome;
@property int chave;

-(id)initWithNome: (NSString *)n Chave: (int)c;
@end
