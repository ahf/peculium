PROJECT = peculium

DEPS = peculium_core

dep_peculium_core = https://github.com/ahf/peculium_core.git master

release: clean-release
	relx -o rel/$(PROJECT)

clean-release:
	rm -rf rel/$(PROJECT)

console: release
	./rel/peculium/bin/peculium console -pa ../../deps/*/ebin

.PHONY: release clean-release console

include erlang.mk
