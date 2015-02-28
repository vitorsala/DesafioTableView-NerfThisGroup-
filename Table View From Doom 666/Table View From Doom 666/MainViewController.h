//
//  MainViewController.h
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetalhesViewController.h"
#import "Aplicativo.h"
#import "Categoria.h"
#import "AppTableViewCell.h"

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)btnEdit:(id)sender;

@property NSMutableArray* categorias;
@property NSMutableArray* aplicativos;


@end
