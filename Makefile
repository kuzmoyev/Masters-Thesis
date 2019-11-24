compile:
	docker kill compile-tex || echo "Container is not running"
	docker container rm compile-tex || true
	docker build -t compile-tex .
	docker run --name compile-tex -td compile-tex
	docker cp compile-tex:/opt/MP_Kuzmovych_Yevhen_2019.pdf .
	open MP_Kuzmovych_Yevhen_2019.pdf
