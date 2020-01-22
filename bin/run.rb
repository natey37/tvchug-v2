require_relative '../config/environment'


$current_user = User.all.first
$current_show_id = 0
$current_show_hash = {}

welcome
