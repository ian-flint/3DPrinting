use <MCAD/boxes.scad>

slotwidth = 15;
thickness = 6;
partheight = 150;
partwidth = 150;
bevel = 1;
lipheight = 10;
borderwidth = 25;
hingeheight = thickness * 2;
hingeradius = 2;
hingethickness = 12;

module malehinge () {
    union () {
        roundedCube(size=[hingethickness + thickness, hingethickness, hingeheight], r=bevel);
        translate([hingethickness / 2, hingethickness / 2, 0]) cylinder(h=hingeheight * 2, r=hingeradius, center=true);
    }
}

module femalehinge() {
    difference () {
        roundedCube(size=[hingethickness + thickness, hingethickness, hingeheight], r=bevel);
        translate([hingethickness / 2, hingethickness / 2, hingeheight/2]) cylinder(h=hingeheight, r=hingeradius, center=true);
    }
}

$fa = 1;
$fs = 0.4;