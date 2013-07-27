//
//  ViewController.m
//  TRansicionesPorCodigo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize capa, animacion, subtipo, tipoTransicion;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    capa = [CALayer layer];
    capa.bounds = CGRectMake(0, 0, 300, 255);
    capa.contents = (id)[UIImage imageNamed:@"foto.jpg" ].CGImage;
    capa.position = CGPointMake(160, 150);
    capa.anchorPoint = CGPointMake(0.5, 0.5);
    [self.view.layer addSublayer:capa];
    
    animacion = [CATransition animation];
    animacion.duration = 1;
    animacion.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    tipoTransicion = 1;
    subtipo = 1;
    
    
}
-(IBAction)hacerTransicion:(id)sender {
    
    switch (tipoTransicion) {
        case 1:
            animacion.type = kCATransitionMoveIn;
            tipoTransicion++;
            break;
        case 2:
            animacion.type = kCATransitionPush;
            tipoTransicion++;
            break;
        case 3:
            animacion.type = kCATransitionReveal;
            tipoTransicion++;
            break;
        default:
            break;
    } [capa addAnimation:animacion forKey:@"transition"];
    
}

-(IBAction)irSubtipo:(id)sender {
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            animacion.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animacion.subtype = kCATransitionFromRight;
            break;
        case 2:
            animacion.subtype = kCATransitionFromTop;
            break;
        case 3:
            animacion.subtype = kCATransitionFromBottom;
            break;
        default:
            break;
    } [capa addAnimation:animacion forKey:@"transition"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
