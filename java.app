import javax.swing.*;

public class App {

    // Constants for the game board dimensions
    private static final int BOARD_WIDTH = 360;
    private static final int BOARD_HEIGHT = 640;

    public static void main(String[] args) {
        // Create and configure the game window
        JFrame frame = createGameWindow();

        // Initialize the game logic
        FlappyBird flappyBird = new FlappyBird();
        frame.add(flappyBird);

        // Finalize window setup and display
        frame.pack();
        flappyBird.requestFocus();
        frame.setVisible(true);
    }

    /**
     * Creates and configures the game window.
     *
     * @return a configured JFrame instance.
     */
    private static JFrame createGameWindow() {
        JFrame frame = new JFrame("Flappy Bird");
        frame.setSize(BOARD_WIDTH, BOARD_HEIGHT);
        frame.setLocationRelativeTo(null); // Center the window
        frame.setResizable(false);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        return frame;
    }
}
