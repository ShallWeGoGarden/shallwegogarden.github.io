DOCS_VOLUME="${PWD}:/docs"
PORT=8000

deps:
	@pip3 install -r requirements.txt

dockerbuild:
	@docker build --platform linux/arm64/v8 -t shallwegogarden/docs:latest .

build:
	@docker run --rm=true \
		-v $(DOCS_VOLUME) \
		shallwegogarden/docs:latest build

serve:
	@docker run --rm=true \
		-p $(PORT):8000 \
		-v $(DOCS_VOLUME) \
		shallwegogarden/docs:latest
