//
//  ViewController.m
//  FahrenheitToCelsius
//
//  Created by DetroitLabs on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tempTF;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tempSegmentedControl;

@end

int fahrenheit, celsius;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)convertTempButtonPressed:(id)sender {

    
    if (_tempSegmentedControl.selectedSegmentIndex == 0) {
        
        [self fahrenheitToCelsius];
        
    } else {
        [self celsiusToFahrenheit];
    }
    
}

-(void)fahrenheitToCelsius {
    fahrenheit = [_tempTF.text intValue];
    celsius = (fahrenheit - 32) * .55;
    _tempLabel.text = [NSString stringWithFormat:@"%i", celsius];
}

-(void)celsiusToFahrenheit {
    celsius = [_tempTF.text intValue];
    fahrenheit = (celsius * 1.8) + 32;
    _tempLabel.text = [NSString stringWithFormat:@"%i", fahrenheit];
}

@end
