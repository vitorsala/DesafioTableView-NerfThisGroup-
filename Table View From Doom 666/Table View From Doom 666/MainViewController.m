//
//  MainViewController.m
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _categorias = [[NSMutableArray alloc]init];
    [_categorias addObject:[[Categoria alloc]initWithNome: @"Utilidades" Chave:0 ]];
    [_categorias addObject:[[Categoria alloc]initWithNome: @"Diversão" Chave:1 ]];
    [_categorias addObject:[[Categoria alloc]initWithNome: @"Ócioftw" Chave:2 ]];

    _aplicativos = [[NSMutableArray alloc]init];
    [_aplicativos addObject: [[Aplicativo alloc] initWithName:@"Contador" Categoria:[_categorias objectAtIndex:0] Imagem:@"44x44.png"]];
    [_aplicativos addObject: [[Aplicativo alloc] initWithName:@"Quiz" Categoria:[_categorias objectAtIndex:1] Imagem:@"44x44.png"]];
    [_aplicativos addObject: [[Aplicativo alloc] initWithName:@"Fontes" Categoria:[_categorias objectAtIndex:2] Imagem:@"44x44.png"]];

    _tableView.dataSource = self;
    _tableView.delegate = self;


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
//    AppTableViewCell *cell = [[AppTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"celula"];
    cell.nome.text = [(Aplicativo *)[_aplicativos objectAtIndex:[indexPath row]] nome];
    cell.categoria.text = [[(Aplicativo *)[_aplicativos objectAtIndex:[indexPath row]] categoria] nome];
    cell.imagem.image = [UIImage imageNamed:[(Aplicativo *)[_aplicativos objectAtIndex:[indexPath row]] imagem]];

    return cell;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [_aplicativos removeObjectAtIndex:[indexPath row]];
        [_tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:YES];
    }
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return true;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    AppTableViewCell *cell = [_aplicativos objectAtIndex:[sourceIndexPath row]];
    [_aplicativos removeObjectAtIndex:[sourceIndexPath row]];
    [_aplicativos insertObject:cell atIndex:[destinationIndexPath row]];
}

- (IBAction)btnEdit:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if([btn.currentTitle isEqualToString:@"Edit"]){
        [_tableView setEditing:true animated:YES];
        [btn setTitle:@"Finish" forState:UIControlStateNormal];
    }
    else{
        [_tableView setEditing:false animated:YES];
        [btn setTitle:@"Edit" forState:UIControlStateNormal];
    }
}

- (IBAction)dragAndDrop:(id)sender {
    NSLog(@"events");
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"tran"]) {
        DetalhesViewController *d = [segue destinationViewController];

        long row = [[[self tableView] indexPathForSelectedRow] row];

        [d setArr:@[[[_aplicativos objectAtIndex:row] nome],[[(Aplicativo *)[_aplicativos objectAtIndex:row] categoria] nome],[[_aplicativos objectAtIndex:row] imagem]]];
        
    }
}



@end
