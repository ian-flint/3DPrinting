use <MCAD/boxes.scad>
include <kindle_stand_shared.scad>

hull () {
    roundedCube (size=[thickness, thickness, thickness], r=bevel);
    translate([0, partheight - thickness, 0]) roundedCube (size=[thickness, thickness, thickness], r=bevel);
    translate([partheight/2, partheight/5, 0]) roundedCube (size=[thickness, thickness, thickness], r=bevel);
}
    translate ([0, thickness * 3, thickness/2]) roundedCube([thickness * 2, thickness* 2, thickness], r=bevel, center=true);
    translate ([0, partheight/2, thickness/2]) roundedCube([thickness * 2, thickness * 2, thickness], r=bevel, center=true);
    translate ([0, partheight - thickness * 3, thickness/2]) roundedCube([thickness * 2, thickness * 2, thickness], r=bevel, center=true);
