stepinfo(my_tf_with_pid) 
pid_sys= pid (99, 35, 35)
pid_contrlr=tf(pid_sys)			% to get PID controller
my_tf_with_pid=feedback ((pid_contrlr*my_tf), 1)	% for feedback
step (my_tf_with_pid, 80)			% for step response
grid on
stepinfo(my_tf_with_pid) 