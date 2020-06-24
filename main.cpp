#include <iostream>
#include <sstream>
#include <fstream>
#include <cmath>

using namespace std;

struct Color { char r, g, b; };

double distance(int x1, int y1, int x2, int y2) {
    return sqrt((x1 - x2) * (x1 - x2) + (y2 - y1) * (y2 - y1));
    // returns the distance of two points
}

double angle(int x, int y) {
    double ang = asin((double) y / sqrt(x*x + y*y));
    if (x < 0)
        if (y > 0) return M_PI - angle(-x, y);
        else return -M_PI - angle(-x, y);
    return ang;
    // returns the angle of the given point and x-axis
    // result is between -PI and PI
}

double angle_diff(double alfa, double beta) {
    if (alfa*beta >= 0) return abs(alfa - beta);
    double ang = abs(alfa) + abs(beta);
    if (ang > M_PI) return 2.0 * M_PI - ang;
    return ang;
    // returns the difference of two angles
    // result is between 0 and PI
}

char col_of(int x, int y, double angle_of_max = 0.0, int max_col = 255) {
    return (cos(angle_diff(angle_of_max, angle(x, y))) + 1.0) / 2.0 * max_col;
    // returns a value between 0 and max_col
    // returns a single r, g or b value
    // max at angle, min at PI + angle
}

#define M_2PI_3 2.0/3.0*M_PI
#define M_m2PI_3 -2.0/3.0*M_PI

Color rgb_of(int x, int y,
        double angle_r = 0.0, double angle_g = M_2PI_3, double angle_b = M_m2PI_3,
        int max_col = 255) {
    char red   = col_of(x, y, angle_r, max_col);
    char green = col_of(x, y, angle_g, max_col);
    char blue  = col_of(x, y, angle_b, max_col);
    return Color{ red, green, blue };
    // returns an rgb triple of a point
    // max vals at the given angles
}

int main() {
    ofstream file("/home/ronaikovacs/Prog/PPM/test6_img.ppm", ios::binary | ios::out);

    const int width = 1920, height = 1080, col_depth = 255;

    stringstream ppm_header;
    ppm_header << "P6 " << width << " " << height << " " << col_depth << " ";
    file.write(ppm_header.str().c_str(), ppm_header.str().length());

    int x, y;

    for (int h = 0; h < height; ++h) {
        for (int w = 0; w < width; ++w) {
            x = w-width/2;
            y = h-height/2;
            char red   = col_of(x, y, 0.0, col_depth);
            char green = col_of(x, y, 2.0/3.0 * M_PI, col_depth);
            char blue  = col_of(x, y, -2.0/3.0 * M_PI, col_depth);
            file.write(reinterpret_cast<const char *>(&red),   sizeof(red));
            file.write(reinterpret_cast<const char *>(&green), sizeof(green));
            file.write(reinterpret_cast<const char *>(&blue),  sizeof(blue));
        }
    }

    file.close();

    return 0;
}
