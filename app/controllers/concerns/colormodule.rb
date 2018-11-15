module Color

	def color_table
		aa = (@progress.page * @progress.steps.count)
		aa.times do |i|
	    	@progress.step_colors.create! :color => 0
	    end
	end

end