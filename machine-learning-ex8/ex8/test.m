for i=1:num_movies
	for j= 1:num_users
		if R(i,j)==1
			predict= Theta(j,:)*(X(i,:)');
			predict= predict- Y(i,j);
			predict= predict^2;
			J= J+ predict;
		end
	end
end
J=J/2;