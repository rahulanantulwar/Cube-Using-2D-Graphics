//
//  ViewController.m
//  CubeDemo
//
//  Created by Sonam Agarwal on 4/12/19.
//  Copyright © 2019 Harbinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    float a;
    float b;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self drawRect:CGRectMake(50, 20, 50, 200)];
    ViewForCube *viewCube = [[ViewForCube alloc]init];
    viewCube.xcoordinate = 130;
    viewCube.ycoordinate = 250;
    //Calculate according to score
    viewCube.fillHeight = 30.0;
    viewCube.fillColor = [UIColor colorWithRed:90.0/255.0 green:47.0/255.0 blue:105.0 alpha:1.0];
    [self.view addSubview:viewCube];
//}
    a=130;
    b=250;
    

//    int n = 6; //number of edges
//    float j = 60; //length of each edge
//    float x = 130;
//    float y = 250;//the point 130,250 will be at the bottom of the figure
//    float angle = 120;
//
//
//    CGRect frame = CGRectMake(x, y, 2, 2);//put a dot on x,y
//    NSLog(@"%f | %f, %f", angle, x, y);
//
//    //display the dot
//    UIView *rect = [[UIView alloc] initWithFrame:frame];
//    rect.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect];
//    x = x + j*cosf(angle);
//    y = y - j*sinf(angle);
//    NSLog(@"value of x and y is %f and %f",x,y);
//    frame = CGRectMake(x, y, 2, 2);
//    UIView *rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];
//    a = a - j*cosf(angle);
//    b = b - j*sinf(angle);
//    NSLog(@"value of a and b is %f and %f",a,b);
//    frame = CGRectMake(a, b, 2, 2);
//    rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];
//    y = y-j;
//    NSLog(@"value of x and y is %f and %f",x,y);
//    frame = CGRectMake(x, y, 2, 2);
//    rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];
//
//    b = b-j;
//    frame = CGRectMake(a, b, 2, 2);
//    rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];
//
//
//    x = x - j*cosf(angle);
//    y = y - j*sinf(angle);
//    NSLog(@"value of x and y is %f and %f",x,y);
//    frame = CGRectMake(x, y, 2, 2);
//
//    rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];
    
    
    
    
    //Working Code
//    
//        int n = 6; //number of edges
//        float j = 60; //length of each edge
//        float x = 130;
//        float y = 250;//the point 130,250 will be at the bottom of the figure
//        float angle = 120;
//    
//    //1
//        CGRect frame = CGRectMake(x, y, 2, 2);//put a dot on x,y
//        NSLog(@"%f | %f, %f", angle, x, y);
//    
//        //display the dot
//        UIView *rect = [[UIView alloc] initWithFrame:frame];
//        rect.backgroundColor = [UIColor blueColor];
//        [self.view addSubview:rect];
//        x = x + j*cosf(angle);
//        y = y - j*sinf(angle);
//        NSLog(@"value of x and y is %f and %f",x,y);
//    //2
//        frame = CGRectMake(x, y, 2, 2);
//  
//        UIView *rect2 = [[UIView alloc] initWithFrame:frame];
//        rect2.backgroundColor = [UIColor blueColor];
//        [self.view addSubview:rect2];
//        a = a - j*cosf(angle);
//    
//        b = b - j*sinf(angle);
//     float s = b;
//    //3
//        NSLog(@"value of a and b is %f and %f",a,b);
//        frame = CGRectMake(a, b, 2, 2);
//        rect2 = [[UIView alloc] initWithFrame:frame];
//        rect2.backgroundColor = [UIColor blueColor];
//        [self.view addSubview:rect2];
//    //4
//        a = a + j*cosf(angle);
//        b = b - j*sinf(angle);
//        NSLog(@"value of a and b is %f and %f",a,b);
//        frame = CGRectMake(a, b, 2, 2);
//        rect2 = [[UIView alloc] initWithFrame:frame];
//        rect2.backgroundColor = [UIColor blueColor];
//        [self.view addSubview:rect2];
//    
//    float r =130;
//    
//   frame = CGRectMake(r, s, 2, 2);//put a dot on x,y
//    NSLog(@"%f | %f, %f", angle, r, s);
//    
//    //display the dot
//   rect = [[UIView alloc] initWithFrame:frame];
//    rect.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect];
//    
//        r = r + j*cosf(angle);
//        s = s - j*sinf(angle);
//        NSLog(@"value of x and y is %f and %f",r,s);
//        frame = CGRectMake(r, s, 2, 2);
//        rect2 = [[UIView alloc] initWithFrame:frame];
//        rect2.backgroundColor = [UIColor blueColor];
//        [self.view addSubview:rect2];
//    
//    
//    r = r - j*cosf(angle);
//    s = s - j*sinf(angle);
//    NSLog(@"value of x and y is %f and %f",r,s);
//    frame = CGRectMake(r, s, 2, 2);
//    rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];
//    
//    r = r - j*cosf(angle);
//    s = s + j*sinf(angle);
//    NSLog(@"value of x and y is %f and %f",r,s);
//    frame = CGRectMake(r, s, 2, 2);
//    rect2 = [[UIView alloc] initWithFrame:frame];
//    rect2.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect2];


    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//int n = 6; //number of edges
//float j = 60; //length of each edge
//float x = 130;
//float y = 250;//the point 130,250 will be at the bottom of the figure
//float angle = 2*M_PI;
//for (int i = 0; i < n; i++) {
//    
//    CGRect frame = CGRectMake(x, y, 2, 2);//put a dot on x,y
//    NSLog(@"%f | %f, %f", angle, x, y);
//    x = x + j*cosf(angle);
//    y = y + j*sinf(angle); //move to the next point
//    angle = angle - 2*M_PI/n; //update the angle
//    
//    //display the dot
//    UIView *rect = [[UIView alloc] initWithFrame:frame];
//    rect.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:rect];



@end
