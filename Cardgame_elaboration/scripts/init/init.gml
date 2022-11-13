// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region Particle Types

//Basic Particle
 var _p = part_type_create();
 
 part_type_shape(_p, pt_shape_disk);
 part_type_life(_p, 20, 40);
 part_type_size(_p, 0.4, 0.4, 0, 0);
 
 part_type_alpha2(_p, 1, 0);
 part_type_color2(_p, c_red, c_white)
 
 global.ptBasic = _p;
 
 #endregion