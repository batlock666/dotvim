.PHONY:
install:
	ln -rs _exrc ~/.exrc
	ln -rs _gvimrc ~/.gvimrc
	ln -rs _vim/ ~/.vim
	ln -rs _vimrc ~/.vimrc

.PHONY:
clean:
	rm -fv ~/.exrc
	rm -fv ~/.gvimrc
	rm -fv ~/.vim
	rm -fv ~/.vimrc
