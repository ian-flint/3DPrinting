width = 75;
length = 60;

difference() {
union(){
cube([width - 0.5, length+2, 3]);
translate([0,0,3]) rotate([0,90,0]) cylinder(h=width - 0.5, r=3);
}
translate([0,0,3]) rotate([0,90,0]) cylinder(h=6, r=1.5);
translate([width-6,0, 3]) rotate([0,90,0]) cylinder(h=6, r=1.5);
}

translate([20, -10, 0]) cylinder(h=8.5, r=1.5);
translate([10, -10, 0]) cylinder(h=8.5, r=1.5);

$fa = 1;
$fs = 0.4;
