tool
## Center point of an intersection
##
## Should be contained within a RoadContainer and a sibling to 1+ RoadPoints
class_name RoadIntersection, "res://addons/road-generator/resources/road_intersection.png"
#gd4
#@icon("res://addons/road-generator/resources/road_intersection.png")
extends Spatial


# ------------------------------------------------------------------------------
# Setup and export setter/getters
# ------------------------------------------------------------------------------


#gd4
#func _get_configuration_warnings() -> PackedStringArray:
func _get_configuration_warning() -> String:
	return "Intersections not yet implemented"

	var par = get_parent()
	if par.has_method("is_road_container"):
		return ""
	else:
		return "Intersection should be a direct child of a RoadContainer"


# Workaround for cyclic typing
func is_road_intersection() -> bool:
	return true
