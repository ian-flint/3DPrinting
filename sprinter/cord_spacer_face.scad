//translate([10, 0, 0]) 

//rotate([0, 90, 0]) translate([61.986, 8.574, 0]) import("/Users/iflint/proto/3DPrinting/sprinter/charger-nook-cable-holder-3rd-generation-sprinter/charger-cable-holder-face.stl");
rotate([0, 0, 45])
rotate([180, 0, 0])
rotate([0, 90, 0]) 
difference() {
linear_extrude(height=280) square([5, 19]);
translate([0, 19.5, 0]) rotate([0, 0, -35]) linear_extrude(height=280) square(10);
translate([0, 6, 55]) cube([5, 5, 5]);
translate([0, 6, 220]) cube([5, 5, 5]);
translate([0, 0, 240]) cube([5, 7, 5]);
translate([0, 0, 35]) cube([5, 7, 5]);
translate([0, 0, 178]) cube([5, 7, 5]);
translate([0, 0, 95]) cube([5, 7, 5]);
}

    $fa = 1;
$fs = 0.4;