// MyCppWrapper.java
public class MyCppWrapper {
    static {
        System.loadLibrary("MyCppProgram");
    }

    public native void runCppMain();

    public static void main(String[] args) {
        new MyCppWrapper().runCppMain();
    }
}
