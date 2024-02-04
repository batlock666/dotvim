.PHONY:
install:
	ln -rs _exrc ~/.exrc
	ln -rs _gvimrc ~/.gvimrc
	ln -rs _vim/ ~/.vim
	ln -rs _vimrc ~/.vimrc

.PHONY:
submodules:
	git submodule init
	git submodule update

.PHONY:
helptags:
	vim -c "helptags ALL" -c q

.PHONY:
clean:
	rm -fv ~/.exrc
	rm -fv ~/.gvimrc
	rm -fv ~/.vim
	rm -fv ~/.vimrc
