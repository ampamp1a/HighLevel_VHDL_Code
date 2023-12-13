divide_digit_2_inst : divide_digit_2 PORT MAP (
		aclr	 => aclr_sig,
		clock	 => clock_sig,
		denom	 => denom_sig,
		numer	 => numer_sig,
		quotient	 => quotient_sig,
		remain	 => remain_sig
	);
