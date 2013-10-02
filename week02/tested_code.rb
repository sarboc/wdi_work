def add(a, b)
	if a == :double
		2 * b
	else
		a + b
	end
end

def test_add
	unless add(1, 1) == 2
		raise "simple integr addition failed"
	end

	unless add("foo", "bar") == "foobar"
		raise "String addition failed"
	end

	unless add(:double, 2) == 4
		raise "Double failed"
	end
end


test_add