cube([95+6, 75+6, 3]);
cube([95+6, 3, 18]);
translate([0, 75+3, 0]) cube([95+6, 3, 18+5]);
difference() {
    cube([3, 75+6, 18+5+4]);
    translate([0, 4, 18+5]) rotate([0, 90, 0]) cylinder(h=3, r=1.5);
}
difference() {
    translate([95+3, 0, 0]) cube([3, 75+6, 18+5+4]);
    translate([95+3, 4, 18+5]) rotate([0, 90, 0]) cylinder(h=3, r=1.5);
}
$fa = 1;
$fs = 0.4;

