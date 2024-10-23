extends ProgressBar

@onready var job_security_progress_bar = $Hud/Control/TextureRect/ProgressBarJobSecurity

var max_job_security: int = 100
var job_security: int = 50

func update_job_security(amount: int):
	job_security += amount
	job_security = clamp(job_security, 0, max_job_security)
	update_job_security_progress_bar()

func update_job_security_progress_bar():
	job_security_progress_bar.value = job_security / max_job_security * 100
