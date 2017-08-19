public static int main(string[] args) {
    Gtk.init (ref args);

    Gtk.Window window = new Gtk.Window ();
    window.set_title ("Hello World");
    window.set_position (Gtk.WindowPosition.CENTER);
    window.set_border_width (12);
    window.destroy.connect (Gtk.main_quit);
    
    Gtk.Button button = new Gtk.Button.with_label ("Click me!");
    button.clicked.connect (() => {
        button.label = "Hello World!";
        button.set_sensitive (false);
    });
    window.add(button);

    window.show_all ();
    Gtk.main ();

    return 0;
}