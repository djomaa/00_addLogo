using System;
using Gtk;

public partial class MainWindow : Gtk.Window
{
    string[] logoPath;
    string[] files;
    string[] outputPath;
    public MainWindow GetWindow() {
        return this;
    }

    public MainWindow() : base(Gtk.WindowType.Toplevel)
    {

        Build();
    }

    protected void OnDeleteEvent(object sender, DeleteEventArgs a)
    {
        Application.Quit();
        a.RetVal = true;
    }

    protected void OnChooseLogo(object sender, EventArgs e) {
        if (this.ChooseDialog(ref this.logoPath, "Choose a logo", FileChooserAction.Open, true, false)) {
            this.logoPathEntry.Text = this.logoPath[0];
        }
    }

    protected void OnChooseFiles(object sender, EventArgs e) {
        if (this.ChooseDialog(ref this.files, "Choose files", FileChooserAction.Open, true, true)) {
            this.filesEntry.Text = "number of choosed files: " + this.files.Length;
        }
    }

    protected void OnChooseOutput(object sender, EventArgs e) {
        if (this.ChooseDialog(ref this.outputPath, "Choose a folder to save files", FileChooserAction.SelectFolder, false, false)) {
            this.outputEntry.Text = this.outputPath[0];
        }
    }

    protected void OnStart(object sender, EventArgs e) {
        main.MainClass.Start(this.logoPath[0], this.files, this.outputPath[0]);
    }

    private bool ChooseDialog(ref string[] returnValue, string title, Gtk.FileChooserAction action, bool isImage, bool isMultiple) {
        Gtk.FileChooserDialog fileChooser = new Gtk.FileChooserDialog(
            title,
            this,
            action,
            "Cancel", ResponseType.Cancel,
            "Open", ResponseType.Accept
        ) {
            SelectMultiple = isMultiple,
        };
        if (isImage) {
            FileFilter filter = new FileFilter();
            filter.Name = "Image files";
            filter.AddPattern("*.jpg");
            filter.AddPattern("*.jpeg");
            filter.AddPattern("*.png");
            filter.AddPattern("*.tif");
            filter.AddPattern("*.bmp");
            filter.AddPattern("*.gif");
            filter.AddPattern("*.tiff");
            fileChooser.Filter = filter;
        }
        if (fileChooser.Run() == (int)ResponseType.Accept) {
            if (isMultiple)
                returnValue = fileChooser.Filenames;
            else
            {
                returnValue = new string[] { fileChooser.Filename };
            }
            fileChooser.Destroy();
            return true;
        } else {
            fileChooser.Destroy();
            return false;
        }
    }

}

