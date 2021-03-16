#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
/* method declaration */
- (int)add:(int)num1 andNum2:(int)num2;
- (int)sub:(int)num1 andNum2:(int)num2;
- (int)mul:(int)num1 andNum2:(int)num2;
- (double)div:(int)num1 andNum2:(int)num2;
@end

@implementation SampleClass

/* method returning the add of two numbers */
- (int)add:(int)num1 andNum2:(int)num2 {

   /* local variable declaration */
   int result;
 
   result = num1 + num2;
 
   return result; 
}

/* method returning the sub of two numbers */
- (int)sub:(int)num1 andNum2:(int)num2 {

   /* local variable declaration */
   int result;
 
   result = num1 - num2;
 
   return result; 
}

/* method returning the mul of two numbers */
- (int)mul:(int)num1 andNum2:(int)num2 {

   /* local variable declaration */
   int result;
 
   result = num1 * num2;
 
   return result; 
}

/* method returning the div of two numbers */
- (double)div:(int)num1 andNum2:(int)num2 {

   /* local variable declaration */
   double result;
   if(num2 != 0){
      result = num1 / num2;
   }else{
      result = 0;
   }
 
   return result; 
}

@end

int main () {
   
   /* local variable definition */
   int a = 400;
   int b = 20;
   int ret1;
   int ret2;
   int ret3;
   double ret4;
   
   SampleClass *sampleClass = [[SampleClass alloc]init];

   /* calling methods to get results */
   ret1 = [sampleClass add:a andNum2:b];
   ret2 = [sampleClass sub:a andNum2:b];
   ret3 = [sampleClass mul:a andNum2:b];
   ret4 = [sampleClass div:a andNum2:b];
 
   NSLog(@"add value is : %d\n", ret1 );
   NSLog(@"sub value is : %d\n", ret2 );
   NSLog(@"mul value is : %d\n", ret3 );
   NSLog(@"div value is : %.2f\n", ret4 );
   return 0;
}
