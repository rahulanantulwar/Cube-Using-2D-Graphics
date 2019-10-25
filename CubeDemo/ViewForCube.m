//
//  ViewForCube.m
//  CubeDemo
//
//  Created by Sonam Agarwal on 4/12/19.
//  Copyright © 2019 Harbinger. All rights reserved.
//

#import "ViewForCube.h"

@implementation ViewForCube
struct Coordinates{
    float x;
    float y;
};
-(id)init{
   self = [super init];
    self.frame = CGRectMake(0, 0, 900,900);
    self.backgroundColor= [UIColor whiteColor];
    return self;
}
- (void)drawRect:(CGRect)rect {
    [self drawBarOfHeight:50 width:20 colour:[UIColor orangeColor] atOrigin:CGPointMake(50,200)];
    [self drawBarOfHeight:100 width:20 colour:[UIColor greenColor] atOrigin:CGPointMake(50+20,200)];
    [self drawBarOfHeight:70 width:20 colour:[UIColor redColor] atOrigin:CGPointMake(50+20+20,200)];
}




-(void)drawBarOfHeight:(CGFloat)bheight width:(CGFloat)bwidth colour:(UIColor *)acolor atOrigin:(CGPoint)origin
{
    
    float xCoordinateLowerFace =_xcoordinate;
    float yCoordinateLowerFace =_ycoordinate;
    float lengthOfEdge = 60; //length of each edge
    float xCoordinateUpperFace = _xcoordinate;
    float yCoordinateUpperFace = _ycoordinate;//the point _xcoordinate,_ycoordinate will be at the bottom of the figure
    float secondX = xCoordinateUpperFace;
    float secondY = yCoordinateUpperFace - lengthOfEdge;
    float firstX = xCoordinateUpperFace;
    float firstY = yCoordinateUpperFace;
    float angle = 120;
    
    //1
    
    NSLog(@"%f | %f, %f", angle, xCoordinateUpperFace, yCoordinateUpperFace);
    
    xCoordinateUpperFace = xCoordinateUpperFace + lengthOfEdge*cosf(angle);
    yCoordinateUpperFace = yCoordinateUpperFace - lengthOfEdge*sinf(angle);
    float firstRIntX = xCoordinateUpperFace;
    float firstRIntY = yCoordinateUpperFace;
    NSLog(@"value of x and y is %f and %f",xCoordinateUpperFace,yCoordinateUpperFace);
    //2
    UIBezierPath *face3 = [UIBezierPath bezierPath];
    [face3 moveToPoint:CGPointMake(_xcoordinate,_ycoordinate)];
    [face3 addLineToPoint:CGPointMake(xCoordinateUpperFace,yCoordinateUpperFace)];
    UIColor *redcolor = [UIColor redColor];
    [redcolor setStroke];
  //  [face3 stroke];
    
    
    xCoordinateLowerFace = xCoordinateLowerFace - lengthOfEdge*cosf(angle);
    
    yCoordinateLowerFace = yCoordinateLowerFace - lengthOfEdge*sinf(angle);
    
    float firstLIntX = xCoordinateLowerFace;
    float firstLIntY = yCoordinateLowerFace;
    
    //3
    UIBezierPath *face4 = [UIBezierPath bezierPath];
    [face4 moveToPoint:CGPointMake(_xcoordinate,_ycoordinate)];
    [face4 addLineToPoint:CGPointMake(xCoordinateLowerFace,yCoordinateLowerFace)];
    UIColor *greenColor = [UIColor greenColor];
    [greenColor setStroke];
    //[face4 stroke];
    //4
  
    UIBezierPath *face5 = [UIBezierPath bezierPath];
    [face5 moveToPoint:CGPointMake(xCoordinateLowerFace,yCoordinateLowerFace)];
    xCoordinateLowerFace = xCoordinateLowerFace + lengthOfEdge*cosf(angle);
    yCoordinateLowerFace = yCoordinateLowerFace - lengthOfEdge*sinf(angle);
    NSLog(@"value of a and b is %f and %f",xCoordinateLowerFace,yCoordinateLowerFace);
    [face5 addLineToPoint:CGPointMake(xCoordinateLowerFace,yCoordinateLowerFace)];
    UIColor *blueColor = [UIColor blueColor];
    [blueColor setStroke];
   // [face5 stroke];
    float endX = xCoordinateLowerFace;
    float endy =yCoordinateLowerFace;
    
    UIBezierPath *face6 = [UIBezierPath bezierPath];
    [face6 moveToPoint:CGPointMake(xCoordinateLowerFace,yCoordinateLowerFace)];
    xCoordinateLowerFace = xCoordinateLowerFace + lengthOfEdge*cosf(angle);
    yCoordinateLowerFace = yCoordinateLowerFace + lengthOfEdge*sinf(angle);
    NSLog(@"value of a and b is %f and %f",xCoordinateLowerFace,yCoordinateLowerFace);
    [face6 addLineToPoint:CGPointMake(xCoordinateLowerFace,yCoordinateLowerFace)];
    UIColor *orColor = [UIColor orangeColor];
    [orColor setStroke];
   // [face6 stroke];
    
    float x3 = xCoordinateLowerFace;
    float y3 = yCoordinateLowerFace;
    
    float r = secondX;
    float s = secondY;
    
    UIBezierPath *face7 = [UIBezierPath bezierPath];
    [face7 moveToPoint:CGPointMake(r,s)];
    r = r + lengthOfEdge*cosf(angle);
    s = s - lengthOfEdge*sinf(angle);
    
    [face7 addLineToPoint:CGPointMake(r,s)];
    UIColor *yColor = [UIColor yellowColor];
    [yColor setStroke];
   // [face7 stroke];
    
    float secondRx = r;
    float secondRy = s;
    
    
    UIBezierPath *face8 = [UIBezierPath bezierPath];
    [face8 moveToPoint:CGPointMake(r,s)];
    r = r - lengthOfEdge*cosf(angle);
    s = s - lengthOfEdge*sinf(angle);
    UIColor *bColor = [UIColor redColor];
    [bColor setStroke];
    [face8 addLineToPoint:CGPointMake(r,s)];
 //   [face8 stroke];
    float lastPointX = r;
    float lastPointY = s;
    
    UIBezierPath *face9 = [UIBezierPath bezierPath];
    [face9 moveToPoint:CGPointMake(r,s)];
    r = r - lengthOfEdge*cosf(angle);
    s = s + lengthOfEdge*sinf(angle);
    [face9 addLineToPoint:CGPointMake(r,s)];
    UIColor *grayColor = [UIColor darkGrayColor];
    [grayColor setStroke];
 //   [face9 stroke];
    float secondLx = r;
    float secondLy = s;
    
    
    UIBezierPath *face10 = [UIBezierPath bezierPath];
    [face10 moveToPoint:CGPointMake(r,s)];
    r = r + lengthOfEdge*cosf(angle);
    s = s + lengthOfEdge*sinf(angle);
    [face10 addLineToPoint:CGPointMake(r,s)];
    UIColor *purpleCol = [UIColor greenColor ];
    [purpleCol setStroke];
   
    
    
    
    
    // joining upper and lower sides
    UIBezierPath *face11 = [UIBezierPath bezierPath];
    [face11 moveToPoint:CGPointMake(firstRIntX,firstRIntY)];
    [face11 addLineToPoint:CGPointMake(secondRx,secondRy)];
    UIColor *mCol = [UIColor blueColor ];
    [mCol setStroke];
    
    //[face11 stroke];
    
    UIBezierPath *face12 = [UIBezierPath bezierPath];
    [face12 moveToPoint:CGPointMake(firstLIntX,firstLIntY)];
    [face12 addLineToPoint:CGPointMake(secondLx,secondLy)];
    UIColor *lCol = [UIColor redColor ];
    [lCol setStroke];
    
    
  //  [face12 stroke];
    
    UIBezierPath *face13 = [UIBezierPath bezierPath];
    [face13 moveToPoint:CGPointMake(secondX,secondY)];
    [face13 addLineToPoint:CGPointMake(firstX,firstY)];
    UIColor *gCol = [UIColor groupTableViewBackgroundColor ];
    [gCol setStroke];
    
   // [face13 stroke];
    
    
    //check
    //
    UIBezierPath *face14 = [UIBezierPath bezierPath];
    [face14 moveToPoint:CGPointMake(endX  ,endy)];
    
    [greenColor setStroke];
    [face14 addLineToPoint:CGPointMake(lastPointX  ,lastPointY)];
   // [face14 stroke];
    
    /**********************logic for filling---*/
    float x2 = firstX;
    float y2 = firstY-_fillHeight;//taking hardcoded for now
    float x1 = firstLIntX;
    float y1 = firstLIntY - _fillHeight;
    
   
    
    /******************logic for filling green color*/
    UIBezierPath *fillLine4 = [UIBezierPath bezierPath];
    [fillLine4 moveToPoint:CGPointMake(x1,y1)];
    [fillLine4 addLineToPoint:CGPointMake(endX,endy-_fillHeight)];
    [fillLine4 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    [fillLine4 addLineToPoint:CGPointMake(secondLx,secondLy)];
    //  [fillLine4 addLineToPoint:CGPointMake(endX ,endy)];
    [fillLine4 closePath];
    
    [[UIColor colorWithRed:104.0/255.0 green:82.0/255.0 blue:116.0/255.0 alpha:1.0] setFill];
   // [[UIColor redColor] setFill];

    [[UIColor greenColor]setStroke];
    [fillLine4 fill];
  //  [fillLine4 stroke];
    /******************/
    
    //logic for filling yellow color
    UIBezierPath *fillLine5 = [UIBezierPath bezierPath];
    [fillLine5 moveToPoint:CGPointMake(endX,endy-_fillHeight)];
    [fillLine5 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    [fillLine5 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    [fillLine5 addLineToPoint:CGPointMake(secondLx,secondLy)];
    //  [fillLine4 addLineToPoint:CGPointMake(endX ,endy)];
    [fillLine5 closePath];
    
[[UIColor colorWithRed:104.0/255.0 green:82.0/255.0 blue:116.0/255.0 alpha:1.0] setFill];
    [[UIColor greenColor]setStroke];
   //[fillLine5 fill];   no need as it overlaps
    
    
    
    //[fillLine5 stroke];
    /***************************************        Rahul Anantulwar*/
    // Fill yellow color to top face
    //    UIBezierPath *fillLine18 = [UIBezierPath bezierPath];
    //    [fillLine18 moveToPoint:CGPointMake(secondX,secondY)];
    //    [fillLine18 addLineToPoint:CGPointMake(secondRx,secondRy)];
    //    [fillLine18 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    //    [fillLine18 addLineToPoint:CGPointMake(secondLx,secondLy)];
    //    //  [fillLine4 addLineToPoint:CGPointMake(endX ,endy)];
    //    [fillLine18 closePath];
    //
    //    [[UIColor yellowColor] setFill];
    //    [[UIColor purpleColor]setStroke];
    //    [fillLine18 fill];
    //    [fillLine18 stroke];
    
    
    UIBezierPath *fillLine20 = [UIBezierPath bezierPath];
    [fillLine20 moveToPoint:CGPointMake(firstRIntX,firstRIntY-_fillHeight)];
    [fillLine20 addLineToPoint:CGPointMake(endX,endy-_fillHeight)];
    [fillLine20 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    [fillLine20 addLineToPoint:CGPointMake(secondRx,secondRy)];
    //  [fillLine4 addLineToPoint:CGPointMake(endX ,endy)];
    [fillLine20 closePath];
    
    [[UIColor colorWithRed:104.0/255.0 green:82.0/255.0 blue:116.0/255.0 alpha:1.0] setFill];
    [[UIColor greenColor]setStroke];
    [fillLine20 fill];
   
    
    //[fillLine20 stroke];
    
    
    
    
    // Fill Blue color to left
    UIBezierPath *fillLine19 = [UIBezierPath bezierPath];
    [fillLine19 moveToPoint:CGPointMake(endX,endy-_fillHeight)];
    [fillLine19 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    [fillLine19 addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    [fillLine19 addLineToPoint:CGPointMake(secondRx,secondRy)];
    //  [fillLine4 addLineToPoint:CGPointMake(endX ,endy)];
    [fillLine19 closePath];
    
    [[_fillColor colorWithAlphaComponent:0.6] setFill];

    [[UIColor redColor]setStroke];
   //[fillLine19 fill];
    
    
    
  //  [fillLine19 stroke];
    
    /*************************************************************/
    
    UIBezierPath *fillLine = [UIBezierPath bezierPath];
    [fillLine moveToPoint:CGPointMake(firstX ,firstY)];
    [fillLine addLineToPoint:CGPointMake(x2,y2)];
    [fillLine addLineToPoint:CGPointMake(x1,y1)];
    [fillLine addLineToPoint:CGPointMake(firstLIntX,firstLIntY)];
    [fillLine closePath];
    
    [[UIColor colorWithRed:67.0/255.0 green:36.0/255.0 blue:78.0/255.0 alpha:1.0] setFill];
    [fillLine fill];
    //[fillLine stroke];
    
    
    
    UIBezierPath *fillLine2 = [UIBezierPath bezierPath];
    [fillLine2 moveToPoint:CGPointMake(firstX ,firstY)];
    [fillLine2 addLineToPoint:CGPointMake(x2,y2)];
    [fillLine2 addLineToPoint:CGPointMake(firstRIntX,firstRIntY-_fillHeight)];
    [fillLine2 addLineToPoint:CGPointMake(firstRIntX,firstRIntY)];
    [greenColor setStroke];
    //[fillLine2 stroke];
   [[UIColor colorWithRed:67.0/255.0 green:36.0/255.0 blue:78.0/255.0 alpha:1.0] setFill];
    [fillLine2 fill];
    
    
  
    
    // top face
    
    UIBezierPath *fillLine3 = [UIBezierPath bezierPath];
    [fillLine3 moveToPoint:CGPointMake(x1 ,y1)];
    [fillLine3 addLineToPoint:CGPointMake(endX,endy-_fillHeight)];
    [fillLine3 addLineToPoint:CGPointMake(x3,y3-_fillHeight)];
    [fillLine3 addLineToPoint:CGPointMake(x2,y2)];
    [fillLine3 addLineToPoint:CGPointMake(x1,y1)];
    //
    //
    //    [greenColor setStroke];
    //    [fillLine3 stroke];
    //  [[UIColor colorWithRed:118.0/255.0 green:90.0/255.0 blue:132.0/255.0 alpha:1.0] setFill];
    [[UIColor colorWithRed:74.0/255.0 green:47.0/255.0 blue:88.0/255.0 alpha:1.0] setFill];
    [fillLine3 fill];
    UIBezierPath *fillTop = [UIBezierPath bezierPath];
    [fillTop moveToPoint:CGPointMake(secondLx ,secondLy)];
    [fillTop addLineToPoint:CGPointMake(secondX,secondY)];
    [fillTop addLineToPoint:CGPointMake(secondRx,secondRy)];
    [fillTop addLineToPoint:CGPointMake(lastPointX,lastPointY)];
    //[fillTop addLineToPoint:CGPointMake(x1,y1)];
    //
    //
    //    [greenColor setStroke];
    //    [fillLine3 stroke];
    //[[UIColor colorWithRed:74.0/255.0 green:47.0/255.0 blue:87.0/255.0 alpha:1.0] setFill];
    [[UIColor colorWithRed:118.0/255.0 green:90.0/255.0 blue:132.0/255.0 alpha:1.0] setFill];
    [fillTop fill];
    
    
}



-(UIColor *)tintOfColor:(UIColor *)acolor tint:(CGFloat)tint
{
    
    //tint > 1.0 lightens
    //tint < 1.0 darkens
    
    CGFloat red = 1.0;
    CGFloat green = 1.0;
    CGFloat blue = 1.0;
    CGFloat alpha = 1.0;
    
    
    if ([acolor getRed:&red green:&green blue:&blue alpha:&alpha]) {
        
        red *= tint;
        green *= tint;
        blue *= tint;
        
        return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    }
    
    return acolor; //in case the call failed , return original
    
    
}



@end
