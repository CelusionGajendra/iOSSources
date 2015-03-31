//
//  ViewController.m
//  PageControlSAmple
//
//  Created by Gajendra Mali on 01/04/15.
//  Copyright (c) 2015 Gajendra Mali. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property ( nonatomic, weak ) UIPageControl* pageControl;
@property ( nonatomic, assign ) NSUInteger pageIndex;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPageControl* pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    self.pageControl = pageControl;
    
    [self.pageControl setNumberOfPages:2];
    [self.pageControl addTarget:self action:@selector(changePage) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.pageControl];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- ( void ) changePage
{
    NSLog(@"CHange page is invoked.");
    if ( [self.pageControl currentPage] == 0 )
    {
        UIView* redView = [[UIView alloc] initWithFrame:self.pageControl.frame];
        [self.view addSubview:redView];
        [redView setBackgroundColor:[UIColor redColor]];
    }
    else
    {
        UIView* otherView = [[UIView alloc] initWithFrame:self.pageControl.frame];
        [self.view addSubview:otherView];
        [otherView setBackgroundColor:[UIColor greenColor]];
    }
    
    [self.view bringSubviewToFront:self.pageControl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
