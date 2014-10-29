//
//  PPGlobalNavigatorMetrics.h
//  PhotoScroller
//
//  Created by Marian PAUL on 03/11/10.
//  Copyright 2010 iPuP SARL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


CGRect PPScreenBounds();
UIInterfaceOrientation PPInterfaceOrientation();

CGRect PPFixedScreenBounds();

CGRect PPScreenBoundsWithOrientation(UIInterfaceOrientation orientation);

CGRect PPNavigationFrame();

CGFloat PPToolBarHeight();

CGFloat PPStatusBarHeight();
CGFloat PPTabBarHeight();

CGFloat PPScreenWidth();
CGFloat PPScreenHeight();