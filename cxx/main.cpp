#include <Magick++.h>
#include <iostream>

using namespace std;
using namespace Magick;

int main(int argc,char **argv) {
    InitializeMagick(*argv);

    Image image,logo;
    int xIndentPercent = 5, yIndentPercent = 5;
    try {
        logo.read("logo.png");
    } catch( Exception &error_ ) {
        cout << "Error on logo reading: " << error_.what() << endl;
        return 1;
    }

    try {
        image.read("example.jpg");
        ssize_t xIndent = image.size().width() / 100 * xIndentPercent;
        ssize_t yIndent = image.size().height() / 100 * yIndentPercent;
        image.composite(logo,image.size().width() - logo.size().width() - xIndent,image.size().height()-logo.size().height() - yIndent,OverCompositeOp);
        image.write("new_" + image.fileName());
        cout << "test" << endl;
        cin.ignore().get();
    } catch ( Exception &error_ ) {
        cout << "Error on image processing: " << error_.what() << endl;
        return 1;
    }
    return 0;
}