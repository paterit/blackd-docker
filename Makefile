all:
	docker build -t paterit/blackd . && \
	docker run -d --rm -p 45484:45484 --name blackd paterit/blackd
stop:
	docker stop blackd
clean:
	docker rmi paterit/blackd:latest