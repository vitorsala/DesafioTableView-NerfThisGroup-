//
//  DetalhesViewController.m
//  Table View From Doom 666
//
//  Created by Vitor Kawai Sala on 25/02/15.
//  Copyright (c) 2015 NerfThisGroup. All rights reserved.
//

#import "DetalhesViewController.h"

@interface DetalhesViewController ()

@end

@implementation DetalhesViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _nome.text = _arr[0];
    _categoria.text = _arr[1];
    _imagem.image = [UIImage imageNamed:_arr[2]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)voltar:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
