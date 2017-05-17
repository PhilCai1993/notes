//
//  main.m
//  ARM iOS
//
//  Created by PhilCai on 18/05/2017.
//  Copyright © 2017 Phil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int addFunction(int a, int b) {
  int d = a + b;
  return d;
}

int main(int argc, char * argv[]) {
  @autoreleasepool {
      return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
  }
}
