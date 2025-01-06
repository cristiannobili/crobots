/* HALO */

int direz, range, grado;
int c1x = 10; int c1y = 10;
int c2x = 10; int c2y = 990;
int c3x = 990; int c3y = 990;
int c4x = 990; int c4y = 10;
main()
{
    direz = rand(360);
    grado = rand(360);
    while (1)
    {
        drive(direz, 100);
        if (loc_y() > 850)
            direz = 180 + rand(180);
        if (loc_y() < 150)
            direz = rand(180);
        if (loc_x() > 850)
            direz = 90 + rand(180);
        if (loc_x() < 150)
            direz = 270 + rand(180);
        range = scan(grado, 20);
        if (range > 0)
        {
            cannon(grado, range);
        }
        else
            grado = grado + 20;
        d = damage();
        if (d > 25)
        {
           tattica();
        }

    }
}
tattica()
{
    int dirx = 0; int diry = 0;
    int disx = 0; int disy = 0;
    int x = 0; int y = 0;
    int curx, cury, corner;
    curx = loc_x(); cury = loc_y();
    corner = rand(4);
    if (corner == 0)
    {
    x = c1x;
    y = c1y;
    }
    if (corner == 1)
    {
    x = c2x;
    y = c2y;
    }
    if (corner == 2)
    {
    x = c3x;
    y = c3y;
    }
    if (corner == 3)
    {
    x = c4x;
    y = c4y;
    }

    disx = curx - x;
    disy = cury - y;

    if (curx > x)
    {
        drive(180, 100);
    }else{
        drive(0, 100);
    }
    if (cury > y)
    {
        drive(270, 100);
    }else{
        drive(90, 100);
    }
}
