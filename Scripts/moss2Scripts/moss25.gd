@tool
extends MeshInstance3D

@export var update = false

# Called when the node enters the scene tree for the first time.
func _ready():
	passShaderParams()
	

func passShaderParams():
	mesh.material.set_shader_parameter("index", 25.) #starts at 0
	mesh.material.set_shader_parameter("totalShells", 31) #num of Shells-1
	mesh.material.set_shader_parameter("shellHeight", .02) #total distance shell comes out in meters
	mesh.material.set_shader_parameter("heightAttenuation", .65) #plug y = x^a into desmos to see a graph of this in action

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if update:
		passShaderParams();
		update = false
