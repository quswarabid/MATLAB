my_tf=tf([0 0 1],[1 2.5 20])
pid_sys= pid (100, 5, 0)
pid_contrlr=tf(pid_sys)			% to get PID controller
my_tf_with_pid=feedback ((pid_contrlr*my_tf), 1)	% for feedback
step (my_tf_with_pid, 80)			% for step response
grid on
hold on;
stepinfo(my_tf_with_pid) 
pid_sys= pid (100, 20, 0)
pid_contrlr=tf(pid_sys)			% to get PID controller
my_tf_with_pid=feedback ((pid_contrlr*my_tf), 1)	% for feedback
step (my_tf_with_pid, 80)			% for step response
grid on
stepinfo(my_tf_with_pid) 
