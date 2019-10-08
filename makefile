build:
	docker build -t netrome/parrot:latest .

publish:
	docker push netrome/parrot:latest

run:
	docker run -p 8080:8080 netrome/parrot
