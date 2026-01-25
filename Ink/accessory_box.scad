hinge_radius = 4;
hinge_diameter = 2 * hinge_radius;
wall_thickness = 3;
full_width = 26+52+(2*wall_thickness) + hinge_diameter;
full_length = 26+26+26+55+(4*wall_thickness);
interior_height = 35;
full_height = interior_height + wall_thickness + hinge_diameter;

// exterior box
difference() {
    cube([full_width, full_length, wall_thickness]);
    translate([hinge_diameter + 13, wall_thickness + 42, 0]) cylinder(h=full_height, r = 11);
    translate([hinge_diameter + 13, (wall_thickness * 2) + 84 + 13, 0]) cylinder(h=full_height, r = 11);
    translate([hinge_diameter + 13, (wall_thickness * 3) + 84 + 26 + 13, 0]) cylinder(h=full_height, r = 11);
    translate([hinge_diameter + wall_thickness + 26 + 26, wall_thickness + 13, 0]) cylinder(h=full_height, r = 11);
    translate([hinge_diameter + wall_thickness + 26 + 26, (2 * wall_thickness) + 26 + 13, 0]) cylinder(h=full_height, r = 11);
    translate([hinge_diameter + wall_thickness + 26 + 26, (3 * wall_thickness) + 26 + 26 + 13, 0]) cylinder(h=full_height, r = 11);

}
difference() {
    cube([full_width, wall_thickness, full_height]);
    translate([hinge_radius, 0, wall_thickness + interior_height + hinge_radius]) rotate([0, 0, 90]) rotate([0, 90, 0]) cylinder(h=3, r=1.5);
}
difference() {
    translate([0, full_length, 0]) cube([full_width, 3, full_height]);
    translate([hinge_radius, full_length, wall_thickness + interior_height + hinge_radius]) rotate([0, 0, 90]) rotate([0, 90, 0]) cylinder(h=3, r=1.5);
}
cube([hinge_diameter, full_length, full_height - hinge_diameter]);
translate([full_width - wall_thickness, 0, 0]) cube([3, full_length, full_height - wall_thickness]);

// dividers
translate([hinge_diameter + 26, 0, 0]) cube([wall_thickness, full_length, interior_height + wall_thickness]);
translate([hinge_diameter + 26, wall_thickness + 26, 0]) cube([52 + (2 * wall_thickness), 3, interior_height + wall_thickness]);
translate([hinge_diameter + 26, 26 + 26 + (2 * wall_thickness), 0]) cube([52 + (2 * wall_thickness), 3, 23 + wall_thickness]);
translate([0, 84 + wall_thickness, 0]) cube([full_width, wall_thickness, interior_height + wall_thickness]);
translate([0, 84 + 26 + (2 * wall_thickness), 0]) cube([26 + wall_thickness + hinge_diameter, wall_thickness, interior_height + wall_thickness]);
$fa = 1;
$fs = 0.4;
