/***
  BEGIN LICENSE

  Copyright (C) 2017 Caio Guedes
  This program is free software: you can redistribute it and/or modify it
  under the terms of the GNU Lesser General Public License version 3, as published
  by the Free Software Foundation.

  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranties of
  MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR
  PURPOSE.  See the GNU General Public License for more details.

  You should have received a copy of the GNU General Public License along
  with this program.  If not, see <http://www.gnu.org/licenses/>

  END LICENSE
***/
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