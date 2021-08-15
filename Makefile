server:
	hexo s -p 4444

init:
	git submodule update --init --recursive
	npm install -g hexo-cli
	npm install

clean:
	hexo clean

deploy: clean
	hexo deploy -g

msg="add new file"
push: deploy
	git add .
	git commit -m $(msg)
	git push