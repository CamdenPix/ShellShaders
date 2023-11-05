@tool
extends MeshInstance3D

@export var update = false

# Called when the node enters the scene tree for the first time.
func _ready():
	passShaderParams()
	

func passShaderParams():
	mesh.material.set_shader_parameter("index", 3.) #starts at 0
	mesh.material.set_shader_parameter("totalShells", 3) #num of Shells-1
	mesh.material.set_shader_parameter("shellHeight", .015) #total distance shell comes out in meters

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if update:
		passShaderParams();
		update = false
