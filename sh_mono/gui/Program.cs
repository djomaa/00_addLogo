using System;
using System.Drawing;

namespace main {
    class MainClass {
        public static void Main(string[] args) {
            Gtk.Application.Init();
            MainWindow win = new MainWindow();
            win.Show();
            Gtk.Application.Run();
        }

        public static void Start(string logoPath, string[] files, string output) {
            string log = "";
            Bitmap logo;
            try {
                logo = new Bitmap(logoPath);

            } catch (Exception e) {
                log += "Error on loading logo at " + logoPath + ": " + e.Message + "\n";
                return;
            }

            int index = 0;
            foreach (string path in files)  {
                try {
                    Graphics baseImg;
                    Image img;
                    img = Image.FromFile(path);
                    baseImg = Graphics.FromImage(img);
                    baseImg.DrawImage(logo, new Point(img.Width, img.Height));
                    baseImg.Save();
                } catch (Exception e) {
                    log += "Error on adding logo to " + path + " : " + e.Message + "\n";
                }
            }
            if (log.Length != 0)
                MainClass.ShowMessage(null, "Error", log);
        }
        static void ShowMessage(Gtk.Window parent, string title, string message)
        {
            Gtk.Dialog dialog = null;
            try
            {
                dialog = new Gtk.Dialog(title, parent,
                    Gtk.DialogFlags.DestroyWithParent | Gtk.DialogFlags.Modal,
                    Gtk.ResponseType.Ok);
                dialog.VBox.Add(new Gtk.Label(message));
                dialog.ShowAll();

                dialog.Run();
            }
            finally
            {
                if (dialog != null)
                    dialog.Destroy();
            }
        }
    }
}
