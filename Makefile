build:
	docker build -t machete3000/etc-netstats .

push:
	docker push machete3000/etc-netstats

release: build push

run:
	docker run --rm -p 127.0.0.1:3000:3000 machete3000/etc-netstats
