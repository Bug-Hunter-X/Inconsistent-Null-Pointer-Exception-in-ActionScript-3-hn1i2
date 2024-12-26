# Inconsistent Null Pointer Exception in ActionScript 3

This repository demonstrates a subtle bug in ActionScript 3 related to null pointer exceptions. The error occurs when attempting to access a property of an object that might be null. The inconsistency arises because the null check is not consistently performed, leading to unpredictable behavior and making debugging difficult.

## Bug Description
The code attempts to access a property of an object that may or may not be assigned a value. This results in an intermittent null pointer exception which is particularly difficult to track due to its seemingly random nature.  The solution showcases how robust null checks should be implemented to prevent this issue.

## How to Reproduce
1. Clone this repository.
2. Open `bug.as` in an ActionScript 3 IDE (like FlashDevelop or IntelliJ IDEA with the ActionScript plugin).
3. Compile and run the project. The error might not appear consistently depending on how the code is executed. 
4. Compare the flawed implementation with the corrected version in `bugSolution.as` to see the difference.