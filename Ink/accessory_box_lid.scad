hinge_radius = 4;
hinge_diameter = 2 * hinge_radius;
wall_thickness = 3;
full_width = 26+52+(2*wall_thickness) + hinge_diameter;
full_length = 26+26+26+55+(4*wall_thickness);
interior_height = 35;
full_height = interior_height + wall_thickness + hinge_diameter;

width = full_length - (2 * wall_thickness);
length = full_width - 2;

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
