In Objective-C, a common yet subtle issue arises when dealing with object ownership and memory management using ARC (Automatic Reference Counting).  Consider the scenario where you have a method returning an object:

```objectivec
- (NSString *)processString:(NSString *)inputString {
    NSString *modifiedString = [inputString stringByAppendingString:@"_modified"];
    return modifiedString; // Potential memory leak
}
```

Without proper understanding, the returned `modifiedString` might appear to be correctly managed by ARC.  However, a memory leak occurs if the caller of this method doesn't retain the `modifiedString` object. This is because the `modifiedString` object is created within the scope of the `processString` method; after the method execution, this object becomes eligible for deallocation, even though it might still be in use elsewhere. 