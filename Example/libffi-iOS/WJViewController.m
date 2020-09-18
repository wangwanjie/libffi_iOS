//
//  WJViewController.m
//  libffi-iOS
//
//  Created by wangwanjie on 09/18/2020.
//  Copyright (c) 2020 wangwanjie. All rights reserved.
//

#import "WJViewController.h"
#import <ffi.h>

@interface WJViewController ()

@end

@implementation WJViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self libffiTest];
}

int funcName(int a, int b) {
    return a + b;
}

- (void)libffiTest {
    // 1
    ffi_type **argTypes;
    argTypes = malloc(sizeof(ffi_type *) * 2);
    argTypes[0] = &ffi_type_sint;
    argTypes[1] = &ffi_type_sint;
    // 2
    ffi_type *retType = &ffi_type_sint;
    // 3
    ffi_cif cif;
    ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 2, retType, argTypes);
    // 4
    void **args = malloc(sizeof(void *) * 2);
    int x = 1, y = 2;
    args[0] = &x;
    args[1] = &y;
    int ret;
    // 5
    ffi_call(&cif, (void (*)(void))funcName, &ret, args);

    NSLog(@"libffi return value: %d", ret);
}

@end
