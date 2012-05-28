R=/tmp/svndumpfilter.test/REPO
test: makerepo filter

makerepo: $R
$R: maketestrepo
	R=$R ./maketestrepo

filter: $R
	R=$R ./filtertestrepo ; read
