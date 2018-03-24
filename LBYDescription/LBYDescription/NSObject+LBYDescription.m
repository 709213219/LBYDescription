//
//  NSObject+LBYDescription.m
//  LBYDescription
//
//  Created by 叶晓倩 on 2018/3/23.
//  Copyright © 2018年 bill. All rights reserved.
//

#import "NSObject+LBYDescription.h"
#import <objc/runtime.h>
#import <QuartzCore/QuartzCore.h>

@implementation NSObject (LBYDescription)

- (NSString *)memberDescription {
    Class klass = self.class;
    
    NSMutableString *propertyInfo = [NSMutableString stringWithFormat:@"====================================================================================================\n%@:\n", NSStringFromClass(klass)];
    
    unsigned int propertyCount = 0;
    objc_property_t *properties = class_copyPropertyList(klass, &propertyCount);
    if (properties) {
        for (unsigned int i = 0; i < propertyCount; i++) {
            NSString *name = [self propertyName:properties[i]];
            if ([name isKindOfClass:[NSString class]] && name.length) {
                id value = [self valueForKey:name];
                if (value && value != (id)kCFNull) {
                    const char *type = property_getAttributes(properties[i]);
                    type++;
                    
                    if (*type == 'c' || *type == 'C') { // char / unsigned char
                        char c;
                        [value getValue:&c];
                        [propertyInfo appendFormat:@"%@ = %c;\n", name, c];
                    } else if (strstr(type, @encode(CATransform3D)) != NULL) { // CATransform3D使用valueForKey取值会得到hex
                        CATransform3D transform3D;
                        [value getValue:&transform3D];
                        [propertyInfo appendFormat:@"%@ = CATransform3D: {%f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f};\n", name, transform3D.m11, transform3D.m12, transform3D.m13, transform3D.m14, transform3D.m21, transform3D.m22, transform3D.m23, transform3D.m24, transform3D.m31, transform3D.m32, transform3D.m33, transform3D.m34, transform3D.m41, transform3D.m42, transform3D.m43, transform3D.m44];
                    } else if (strstr(type, @encode(CGVector)) != NULL) { // CGVector使用valueForKey取值会得到hex
                        CGVector vector;
                        [value getValue:&vector];
                        [propertyInfo appendFormat:@"%@ = CGVector: {%f, %f};\n", name, vector.dx, vector.dy];
                    } else {
                        [propertyInfo appendFormat:@"%@ = %@;\n", name, value];
                    }
                } 
            }
        }
    }
    [propertyInfo appendString:@"===================================================================================================="];
    free(properties);
    
    return propertyInfo;
}

- (NSString *)propertyName:(objc_property_t)property {
    if (!property) return nil;
    
    const char *name = property_getName(property);
    return name ? [NSString stringWithUTF8String:name] : nil;
}

- (id)valueForUndefinedKey:(NSString *)key {
    return (id)kCFNull;
}

@end
