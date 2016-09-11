//
//  AutenticacaoViewController.m
//  Knoowl
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "AutenticacaoViewController.h"
#import "LoginViewController.h"

@interface AutenticacaoViewController ()

@end

@implementation AutenticacaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([_usuario  isEqual: @"teste"] && [_senha  isEqual: @"teste"]) {
        [self performSegueWithIdentifier:@"exibirContatos" sender:NULL];
    }else{
        NSString *mensagemErro = @"Usuário ou senha inválidos.";
        [self performSegueWithIdentifier:@"falhaLoginSegue" sender:mensagemErro];
    }
}

- (void)loadView{
    [super loadView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"falhaLoginSegue"]) {
        LoginViewController *login = segue.destinationViewController;
        [login setMensagemErro:sender];
    }
}









/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
