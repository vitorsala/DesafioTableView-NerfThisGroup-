//
//  AppTableViewController.m
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import "AppTableViewController.h"
#import "DetalhesViewController.h"

@interface AppTableViewController ()

@end

@implementation AppTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _categorias = [[NSMutableArray alloc]init];
    [_categorias addObject:[[Categoria alloc]initWithNome: @"Utilidades" Chave:0 ]];
    [_categorias addObject:[[Categoria alloc]initWithNome: @"Diversão" Chave:1 ]];
    [_categorias addObject:[[Categoria alloc]initWithNome: @"Ócioftw" Chave:2 ]];

    _aplicativos = [[NSMutableArray alloc]init];
    [_aplicativos addObject: [[Aplicativo alloc] initWithName:@"Contador" Categoria:[_categorias objectAtIndex:0] Imagem:@"44x44.png"]];
    [_aplicativos addObject: [[Aplicativo alloc] initWithName:@"Quiz" Categoria:[_categorias objectAtIndex:1] Imagem:@"44x44.png"]];
    [_aplicativos addObject: [[Aplicativo alloc] initWithName:@"Fontes" Categoria:[_categorias objectAtIndex:2] Imagem:@"44x44.png"]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_aplicativos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"celula" forIndexPath:indexPath];

    cell.nome.text = [(Aplicativo *)[_aplicativos objectAtIndex:[indexPath row]] nome];
    cell.categoria.text = [[(Aplicativo *)[_aplicativos objectAtIndex:[indexPath row]] categoria] nome];
    cell.imagem.image = [UIImage imageNamed:[(Aplicativo *)[_aplicativos objectAtIndex:[indexPath row]] imagem]];
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([[segue identifier] isEqualToString:@"tran"]) {
        DetalhesViewController *d = [segue destinationViewController];

        long row = [[[self tableView] indexPathForSelectedRow] row];

        [d setArr:@[[[_aplicativos objectAtIndex:row] nome],[[[_aplicativos objectAtIndex:row] categoria] nome],[[_aplicativos objectAtIndex:row] imagem]]];

    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
