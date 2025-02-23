# Objective-C ARC Memory Leak Example

This repository demonstrates a common memory leak scenario in Objective-C when using Automatic Reference Counting (ARC). The `bug.m` file contains the problematic code, and `bugSolution.m` provides the corrected version.

## Problem
The issue stems from a method returning an NSString object without ensuring proper retention by the caller. This leads to premature deallocation of the object, resulting in a memory leak. 

## Solution
The solution involves ensuring the returned object's lifetime is managed correctly. One approach is to use `copy` to create a new, independent copy of the string that is directly managed by the caller.