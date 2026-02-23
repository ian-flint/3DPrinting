use <MCAD/boxes.scad>

difference() {
rotate([0, 0, -2]) translate([206.72, 140.42, 9.23]) import("/Users/iflint/proto/3DPrinting/sprinter/charger-nook-cable-holder-3rd-generation-sprinter/charger-cable-holder-support.stl");
translate([-1, 0, 0]) cube([5, 30, 10]);
}
translate([-1, 6.5, 0]) roundedCube([6, 5, 5], r=1);

hull() {
    translate([40, 15.7, 0]) rotate([0,0,90]) cylinder(h=5, r=.5);
    translate([39.6, 14, 0]) rotate([0,0,90]) cylinder(h=5, r=.5);
    translate([36.6, 15.4, 0]) rotate([0,0,90]) cylinder(h=5, r=.5);
    translate([34.3, 13.1, 0]) rotate([0,0,90]) cylinder(h=5, r=.5);
}

translate([39, 33, 0]) rotate([0,0,-5]) roundedCube([7.25, 2, 5], sidesonly=1, r=.5);

translate([25, 14, 0]) cube([10, 10, 5]);
    $fa = 1;
$fs = 0.4;