import java.applet.Applet;
import java.awt.Graphics;

public class MyApplet extends Applet {
    private MyCppWrapper cppWrapper;

    public void init() {
        cppWrapper = new MyCppWrapper();
    }

    public void paint(Graphics g) {
        cppWrapper.runCppMain();
        g.drawString("Hello from Java Applet!", 20, 20);
    }
}

