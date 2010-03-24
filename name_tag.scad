/*
Parametric Name Tag 
Tony Buser <tbuser@gmail.com>
http://tonybuser.com
http://creativecommons.org/licenses/by/3.0/
*/

<bitmap.scad>

// change chars array and char_count
// OpenSCAD has no string or length methods :(
chars = ["M","a","k","e","r","B","o","t"];
char_count = 8;

// block size 1 will result in 8mm per letter
block_size = 1;
// height is the Z height of each letter
height = 3;

union() {
	translate(v = [0,-block_size*8*char_count/2+block_size*8/2,3]) {
		8bit_str(chars, char_count, block_size, height);
	}
	translate(v = [0,0,3/2]) {
		color([0,0,1,1]) {
			cube(size = [block_size * 8, block_size * 8 * char_count, 3], center = true);
		}
	}
}
