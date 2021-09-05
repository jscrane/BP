BP := bp.csv

update:
	omron | diff --changed-group-format='%>' --unchanged-group-format='' $(BP) - > x; test $$? -eq 1 && sed 1rx $(BP) > y && mv y $(BP) && rm -f x
