//
//  AppTableViewCell.h
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nome;
@property (weak, nonatomic) IBOutlet UILabel *categoria;
@property (weak, nonatomic) IBOutlet UIImageView *imagem;


@end
