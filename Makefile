gtuber-build:
	meson gtuber gtuber/build
	meson compile -C gtuber/build
	meson install -C gtuber/build --destdir ../installation

gtuber-clean:
	rm -rf gtuber/installation
	rm -rf gtuber/build
