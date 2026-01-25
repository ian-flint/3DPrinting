width = 75;
length = 60;

cube([width+6, length+6, 3]);
cube([width+6, 3, 18]);
translate([0, length+3, 0]) cube([width+6, 3, 18+5]);
difference() {
    cube([3, length+6, 18+5+4]);
    translate([0, 4, 18+5]) rotate([0, 90, 0]) cylinder(h=3, r=1.5);
}
difference() {
    translate([width+3, 0, 0]) cube([3, length+6, 18+5+4]);
    translate([width+3, 4, 18+5]) rotate([0, 90, 0]) cylinder(h=3, r=1.5);
}
$fa = 1;
$fs = 0.4;

