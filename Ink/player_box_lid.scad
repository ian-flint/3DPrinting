
difference() {
    union () {
        resize ([87, 82.5, 2])
            translate([28.5, 178.75, 0]) 
                import("/Users/iflint/proto/3DPrinting/Ink/Player_Box_Lid_x_4.stl");
        translate([-30, 0, 1]) cube(size=[20,20,2], center=true);
    }
    translate([-20, 0, 0])
        cylinder(h=2, r=8);
}
$fa = 1;
$fs = 0.4;