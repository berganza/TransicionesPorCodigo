//
//  ViewController.h
//  TRansicionesPorCodigo
//
//  Created by LLBER on 27/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) CALayer * capa;
@property (nonatomic, strong) CATransition * animacion;

@property int tipoTransicion;
@property int subtipo;


-(IBAction)hacerTransicion:(id)sender;
-(IBAction)irSubtipo:(id)sender;


@end
