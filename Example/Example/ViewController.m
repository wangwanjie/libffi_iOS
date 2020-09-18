//
//  ViewController.m
//  Example
//
//  Created by VanJay on 2020/9/18.
//  Copyright © 2020 VanJay. All rights reserved.
//

#import "ViewController.h"
#import "ffi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self libffiTest];
}

int func1(int a, int b) {
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
    ffi_call(&cif, (void (*)(void))func1, &ret, args);
    
    NSLog(@"libffi return value: %d", ret);
}

@end
