use <MCAD/boxes.scad>
include <kindle_stand_shared.scad>

rotate([0, 270, 0])
union () {
difference () {
union() {
roundedCube(size=[thickness, borderwidth, partheight], r=bevel);
translate([0, partwidth - borderwidth, 0]) roundedCube(size=[thickness, borderwidth, partheight], r=bevel);
roundedCube(size=[thickness, partwidth, borderwidth], r=bevel);
translate([0, 0, partheight - borderwidth]) roundedCube(size=[thickness, partwidth, borderwidth], r=bevel);
}
translate ([thickness/2, borderwidth/2, thickness * 3]) cube([thickness, thickness, thickness * 2], center=true);
translate ([thickness/2, partwidth - borderwidth/2, thickness * 3]) cube([thickness, thickness, thickness * 2], center=true);
translate ([thickness/2, borderwidth/2, partheight/2]) cube([thickness, thickness, thickness * 2], center=true);
translate ([thickness/2, partwidth - borderwidth/2, partheight/2]) cube([thickness, thickness, thickness * 2], center=true);
translate ([thickness/2, borderwidth/2, partheight - thickness * 3]) cube([thickness, thickness, thickness * 2], center=true);
translate ([thickness/2, partwidth - borderwidth/2, partheight - thickness * 3]) cube([thickness, thickness, thickness * 2], center=true);
}

roundedCube(size=[slotwidth + (thickness * 2), partwidth, thickness], r=bevel);
//translate([thickness + thickness + slotwidth, 0, 0])
//    rotate ([0, 30, 0])
//        translate ([-thickness, 0, 0])
//            roundedCube(size=[thickness, partwidth, thickness + lipheight], r=bevel);
}
//Hinges
//translate([-hingethickness, 0, partheight - thickness - hingeheight]) femalehinge();

//translate([-hingethickness, partwidth - hingethickness, partheight - thickness - hingeheight]) femalehinge();
    
//translate([-hingethickness, 0, thickness + hingeheight]) femalehinge();
    
//translate([-hingethickness, partwidth - hingethickness, thickness + hingeheight]) femalehinge();

    $fa = 1;
$fs = 0.4;