difference() {

	// bracket 
	translate([120,0,0])
	rotate(a=[0,-90,0])
	linear_extrude(height=120)
	import (file = "bracket.dxf");

	translate([18.5,0,31])
	screw_hole();
	
	translate([101.5,0,31])
	screw_hole();

	translate([15,132,0])
	cylinder(h=50, r=9.5, $fn=100);

	// cutout
	translate([120,150,0])
	resize([170,220,50])
	linear_extrude(height=50)
	circle(1, $fn=100);
}

module screw_hole() {
	rotate(a=[-90,0,0])
	cylinder(h=70, r=4, $fn=100);
	
	translate([0,10,0])
	rotate(a=[-90,0,0])
	cylinder(h=70, r=10, $fn=100);
}