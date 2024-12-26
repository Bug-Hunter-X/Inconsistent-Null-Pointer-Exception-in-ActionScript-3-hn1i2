The following ActionScript 3 code attempts to access a property of a null object, resulting in a runtime error.  This is a common error, but the subtlety lies in how the null value is created and how the error manifests inconsistently.

```actionscript
public class MyClass {

    public function MyClass() {
        var myObject:Object = null;

        // ...some code that might or might not assign a value to myObject...

        trace(myObject.someProperty);
    }
}
```

The problem is that the `someProperty` access will throw an error *only* if `myObject` remains null.  If some part of the code before the trace statement assigns a value to myObject, the trace will be successful and no error will be thrown, making it hard to debug. The inconsistency makes it difficult to predict when the null pointer exception will occur, leading to unpredictable behavior in larger projects.