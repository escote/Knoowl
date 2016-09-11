//
//  LoginViewController.m
//  Knoowl
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "LoginViewController.h"
#import "AutenticacaoViewController.h"



@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tf_usuario;
@property (weak, nonatomic) IBOutlet UITextField *tf_senha;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    if (_mensagemErro != NULL ) {
        
        UIAlertController *alerta = [UIAlertController alertControllerWithTitle:@"Erro"
                                                                    message:_mensagemErro
                                                             preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alerta addAction:defaultAction];

        
        [self presentViewController:alerta animated:YES completion:nil];
    }
    
}


- (IBAction)unwindParaLogin:(UIStoryboardSegue *)segue {
    NSLog(@"Segue: %@", segue);
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"efetuarLogin"]) {
        
        AutenticacaoViewController *destino = segue.destinationViewController;
        
        [destino setUsuario:_tf_usuario.text];
        [destino setSenha:_tf_senha.text];
        
        
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
